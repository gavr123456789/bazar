# Reflection

```scala
Class::T ifInstance::Any? thenDo::[T -> R] -> R? =     
    (.isInstance: ifInstance) ifTrue: [
        thenDo T: (.cast: ifInstance)
    ] ifFalse: [
        null
    ]

Int class ifInstance: 1 thenDo: [ "An int" echo ]
```
