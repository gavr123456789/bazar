# Asserts
```Scala
Test push = [
  stack = Stack::Int ofSize: 3
  stack push: 1
  stack push: 2
  stack push: 3
  Assert that: stack toStr equals: "Stack{ 1 2 3 }"
]

Test pop = [
  stack = Stack::Int ofSize: 3
  stack push: 1
  stack push: 2
  stack pop
  stack pop
  Assert that: stack count equals: 0
  Assert that: stack toStr equals: "Stack{ }"
]
```

# Debug
```Scala
(1 inc inc inc) debug  // '1 inc inc inc = 4
x = 42
x debug // `x = 42

// since debug returns receiver its possible to use it in any message chain
// lets say you have a chain of comprehansions methods
{1 2 3 4 5} 
  map: [it + 1] |>
  filter: [it % 2 == 0] |>
  inject: 0 into: [a, b -> a + b] |>
  echo
// but there is some bug and u wanna debug it
{1 2 3 4 5} 
  map: [it + 1] |> debug |>
  filter: [ it % 2 == 0] |> debug |>
  inject: 0 into: [a, b -> a + b] |> debug
```
will print
```
map: [ it + 1 ] = [2, 3, 4, 5, 6]
filter: [ it % 2 == 0 ] = [2, 4, 6]
inject: 0 into: [ a, b -> a + b ] = 12
```

# Color print
Printing text with colors
```Scala
"Hello"red + " World"purp + "!"cyan |> echo
```

# TODO
Can be used for not implemented methods
```Scala
Int sas -> Int = [
  ^ TO DO: "later"
]
1 sas
```
will get 
```
----------
later
----------
Method: DO              File: main.niva::5
Method: sas             File: main.niva::8
Method: main            File: main.niva::11
```

It works because `TO DO` returns Nothing type, which is bottob type and can be placed instead of any other type. 