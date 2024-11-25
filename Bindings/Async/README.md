# How to use
## kotlinx.coroutines

```Scala
// creates a coroutine scope, will wait all the coroutines inside
runBlocking [
  // launch when u dont need the result
  .launch: [ "World!" delayedEcho ]
  .launch: [ "1" delayedEcho ]
  .launch: [ "2" delayedEcho ]
  // async when u need the result
  job1 = .async: [ 10 + 11 ]
  job2 = .async: [ 10 + 11 ]
  "Hello" echo
  // wait for job's results
  job1 await + job2 await |> echo
]

String delayedEcho >>= [
    CoroutineContext delay: 1 sec
    this echo
]
```
