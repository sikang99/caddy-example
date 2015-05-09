#  Unsafe string conversion

Safe vs Unsafe string conversion
-
https://github.com/bep/gosandbox/tree/master/unsafestrings

이 두개의 함수의 성능차이가 생각보다 상당히 크다는 것이다.

```
package unsafestrings

import (
    "unsafe"
)

func SafeBytesToString(b []byte) string {
    return string(b)
}

func UnsafeBytesToString(b []byte) string {
    return *(*string)(unsafe.Pointer(&b))
}
```

사이트에서 보여주고 있는 테스트 결과이다.
```
$ go test -test.run=NONE -bench=".*" -test.benchmem=true .
BenchmarkSafeBytesToString   5000000           246 ns/op          48 B/op          1 allocs/op
BenchmarkUnsafeBytesToString    2000000000           1.98 ns/op        0 B/op          0 allocs/op
BenchmarkUnsafeStringsReplacer   3000000           552 ns/op           0 B/op          0 allocs/op
BenchmarkSafeStringsReplacer     2000000           777 ns/op          48 B/op          1 allocs/op
BenchmarkMultipleBytesReplace     500000          2563 ns/op         200 B/op          9 allocs/op
BenchmarkMultiplesStringsReplace      500000          2807 ns/op         288 B/op          6 allocs/op
BenchmarkAppendString   100000000           10.7 ns/op         0 B/op          0 allocs/op
BenchmarkAppendByteString   20000000           114 ns/op           8 B/op          1 allocs/op
```

내가 실행해본 결과이다.
```
$ go test -test.run=NONE -bench=".*" -test.benchmem=true .
PASS
BenchmarkSafeBytesToString	20000000	       120 ns/op	      48 B/op	       1 allocs/op
BenchmarkUnsafeBytesToString	2000000000	         0.96 ns/op	       0 B/op	       0 allocs/op
BenchmarkUnsafeStringsReplacer	 5000000	       251 ns/op	       0 B/op	       0 allocs/op
BenchmarkSafeStringsReplacer	 5000000	       381 ns/op	      48 B/op	       1 allocs/op
BenchmarkMultipleBytesReplace	 1000000	      1169 ns/op	     200 B/op	       9 allocs/op
BenchmarkMultiplesStringsReplace	 1000000	      1367 ns/op	     288 B/op	       6 allocs/op
BenchmarkAppendString	300000000	         5.16 ns/op	       0 B/op	       0 allocs/op
BenchmarkAppendByteString	30000000	        52.4 ns/op	       8 B/op	       1 allocs/op
ok  	github.com/bep/gosandbox/unsafestrings	14.607s
```

### 참고
아래에 String 변환이 왜 성능을 요하는지 잘 설명하고 있다.

- Conversion between []byte and string don’t share memory
- Fastest string contatenation
http://golang-examples.tumblr.com/tagged/string
