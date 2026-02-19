# How to use
## simpleTime

```Scala
System currentTimeMillis echo

x = System currentTimeMillis
...
diff = System currentTimeMillis - x
````

## kotlin.time.measureTime

```Scala
measureTime [
  "abc" echo
  "abc" echo
  "abc" echo
] echo

x = measureTime [1 + 1]
x inWholeNanoseconds echo
```
