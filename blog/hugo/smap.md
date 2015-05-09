# Shared Map

(정재휴)
작업을 하다가 여러 고루틴에서 map을 공유해야 할 상황이 생겨, concurrent한 map을 만들어보았습니다.
mutex를 사용하지 않고 channel만을 사용하여, lock 없이 동작하도록 했습니다.
https://gist.github.com/jaehue/5d1aaf76d082f98e8dc0

손댄김에 임포트해서 사용할 수 있게 패키지로 만들었습니다.
https://github.com/jaehue/smap

자료구조의 정의가 재미있어서 검토를 시작하였다.
즉, 채널로 명령을 전달하고 그 결과를 채널로 받아오도록 하고 있다.
그리고 데이터 타입에 관계없이 사용할 수 있도록 interface로 정의하고 있다.
```
type sharedMap struct {
    m map[string]interface{}
    c chan command
}

type command struct {
    action int
    key    string
    value  interface{}
    result chan<- interface{}
}

const (
    set = iota
    get
    remove
    count
    show
)

func New() sharedMap {
    sm := sharedMap{
        m: make(map[string]interface{}),
        c: make(chan command),
    }
    go sm.run()
    return sm
}
```


Print() 함수들에서 바로 사용할 수 있도록 Stringer interface, 즉 String() 메소드를 구현하면 된다.
```
// Implement Stringer interface for Prints
func (sm sharedMap) String() string {
    callback := make(chan interface{})
    sm.c <- command{action: show, result: callback}
    return (<-callback).(string)
}
```


New()에서 선택적으로 채널 버퍼수를 받을 수 있도록 다중변수가 가능하게 수정해봤어요.
즉, New(), New(4) 가 가능합니다.
```
func New(ns ...int) sharedMap {
    n := 1
    for _, number := range ns {
        n = number
        break
    }
    println(n)

    sm := sharedMap {
        m: make(map[string]interface{}),
        c: make(chan command, n),
    }
    go sm.run()
    return sm
}
```

아래의 블로그 내용에서 Map의 병행사용을 위해서는 RWLock을 사용을 추천하고 있다.

**Go maps in action**
https://blog.golang.org/go-maps-in-action

그래서 RWLock 버젼으로 아래와 같이 자료구조를 정의하고 만들어보았다.

```
// Shared map using rwlock
type sharedMap struct {
    m map[string]interface{}
    l *sync.RWMutex
}

func New() sharedMap {
    sm := sharedMap{
        m: make(map[string]interface{}),
        l: new(sync.RWMutex),
    }
    return sm
}
```

그런데, 필드명 없이 바로 사용하면 내부 메소드를 직접 사용할 수 있고
내부의 메소드를 오버로딩할 수 있는 장점이 있다는 것을 알게 되었다.

```
// Shared map using rwlock
type sharedMap struct {
    m map[string]interface{}
    sync.RWMutex
}
```  
(정재휴)
커스텀타입을 필드명을 지정해서 포함시키면 항상 그 필드명과 함께 사용해야 하는데,
struct안에 필드명 없이 다른 커스텀타입을 정의하면(embedding),
커스텀 타입이 가지고 있는 필드랑 메쏘드를 그대로 외부(? 감싸고 있는...) struct에서 사용할 수 있습니다.
embedding된 내부 커스텀 타입의 메쏘드를 override 할수도 있고...
embedding이 좀 더 풍부하게 내부 커스텀 타입의 기능을 사용할 수 있는 것 같아요.

최종적으로 만들어진 Shared Map의 RWLock 버젼의 소스는 다음과 같다.
```
// Shared map rwlock version, sikang99@gmail.com
// https://blog.golang.org/go-maps-in-action
package main

import "fmt"
import "sync"

// Shared map using rwlock
type sharedMap struct {
    m map[string]interface{}
    sync.RWMutex
}

func New() sharedMap {
    sm := sharedMap{
        m: make(map[string]interface{}),
    }
    return sm
}

func (sm sharedMap) Set(k string, v interface{}) {
    sm.Lock()
    sm.m[k] = v
    sm.Unlock()
}

func (sm sharedMap) Get(k string) (interface{}, bool) {
    sm.RLock()
    v, ok := sm.m[k]
    sm.RUnlock()
    return v, ok
}

func (sm sharedMap) Delete(k string) {
    sm.Lock()
    delete(sm.m, k)
    sm.Unlock()
}

func (sm sharedMap) Len() int {
    sm.RLock()
    n := len(sm.m)
    sm.RUnlock()
    return n
}

// Implement Stringer interface for Prints
func (sm sharedMap) String() string {
    sm.RLock()
    str := fmt.Sprint(sm.m)
    sm.RUnlock()
    return str
}

// testing
func main() {
    m := New()
    m.Set("one", 1)
    fmt.Println(m)
    fmt.Println(m.Get("one"))

    m.Set("one", "I")
    fmt.Println(m)
    fmt.Println(m.Get("one"))

    m.Set("two", 2)
    fmt.Println(m)
    fmt.Println(m.Get("two"))

    m.Set("three", 3.3)
    fmt.Println(m)

    m.Delete("two")
    fmt.Println(m)
    fmt.Println(m.Len())
}
```
