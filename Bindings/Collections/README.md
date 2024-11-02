# How to use

## IntArray
IntArray can be more efficient if you work with really big amount of numbers, since it is specified for ints.  
Size cant be changed(only with copy with `copyOf::Int`).  
There is no pretty print.  
```Scala
arr = IntArray ofSize: 10
arr at: 0 put: 42
x = arr at: 0
x echo // 42
```