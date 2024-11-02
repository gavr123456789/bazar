
# package core

## type Int
### unary
```Scala
echo -> Unit
```
increments the number by 1
```Scala
inc -> Int
```
```Scala
dec -> Int
```
```Scala
toFloat -> Float
```
```Scala
toDouble -> Double
```
```Scala
toLong -> Long
```
```Scala
toString -> String
```
```Scala
toChar -> Char
```
### binary
```Scala
== Int -> Boolean
```
```Scala
!= Int -> Boolean
```
```Scala
> Int -> Boolean
```
```Scala
< Int -> Boolean
```
```Scala
<= Int -> Boolean
```
```Scala
>= Int -> Boolean
```
```Scala
+ Int -> Int
```
```Scala
- Int -> Int
```
```Scala
* Int -> Int
```
```Scala
% Int -> Int
```
```Scala
/ Int -> Int
```
Creates a range from this value to the specified (included), use ..< for excluded
```Scala
.. Int -> IntRange
```
Creates a range from this value to the specified (excluded)
```Scala
..< Int -> IntRange
```
### keyword
```Scala
plus: Int -> Int
```
Returns a Range from this value down to the specified to value with the step -1
```Scala
downTo: Int -> IntRange
```
1 to: 3 do: [it echo] // 1 2 3
```Scala
to: Int do: [Int -> Any] -> Unit
```
1 to: 10 by: 2 do: [it echo] // 1 3 5 7 9
```Scala
to: Int by: Int do: [Int -> Any] -> Unit
```
1 until: 4 do: [it echo] // 1 2 3
```Scala
until: Int do: [Int -> Any] -> Unit
```
3 downTo: 1 do: [it echo] // 3 2 1
```Scala
downTo: Int do: [Int -> Any] -> Unit
```

## type String
### unary
```Scala
count -> Int
```
Returns a string with characters in reversed order
```Scala
reversed -> String
```
Returns a string having leading and trailing whitespace removed
```Scala
trim -> String
```
Detects a common minimal indent of all the input lines, removes it from every line
```Scala
trimIndent -> String
```
true if this char sequence is empty or consists solely of whitespace characters
```Scala
isBlank -> Boolean
```
Only the "" is true
```Scala
isEmpty -> Boolean
```
True if its only digits and characters like "abc123"
```Scala
isAlphaNumeric -> Boolean
```
Opposite to isBlank
```Scala
isNotBlank -> Boolean
```
Opposite to isEmpty
```Scala
isNotEmpty -> Boolean
```
```Scala
toInt -> Int
```
```Scala
toFloat -> Float
```
```Scala
toDouble -> Double
```
Returns the first character or throw TODO
```Scala
first -> Char
```
Returns the last character or throw TODO
```Scala
last -> Char
```
```Scala
indices -> IntRange
```
```Scala
echo -> Unit
```
```Scala
toPath -> okio.Path.Path
```
### binary
```Scala
+ String -> String
```
```Scala
== String -> Boolean
```
```Scala
!= String -> Boolean
```
### keyword
```Scala
replace: String with: String -> String
```
 "abc" forEach: [char::Char -> char echo] // a b c 
```Scala
forEach: [Char -> Unit] -> Unit
```
```Scala
forEachIndexed: [Int, Char -> Unit] -> Unit
```
```Scala
filter: [Char -> Boolean] -> String
```
```Scala
startsWith: String -> Boolean
```
```Scala
contains: String -> Boolean
```
```Scala
endsWith: String -> Boolean
```
Returns a substring of this string that starts at the specified startIndex and continues to the end of the string
```Scala
substring: Int -> String
```
 Returns a string containing characters of the original string at the specified range
```niva
 "abcd" slice: 0..<3 // abc
```
```Scala
slice: IntRange -> String
```
Returns a substring after the first occurrence of delimiter
```Scala
substringAfter: String -> String
```
```Scala
substringAfterLast: String -> String
```
look substringAfter:
```Scala
substringBefore: String -> String
```
```Scala
substringBeforeLast: String -> String
```
see substring:
```Scala
substringFrom: Int to: Int -> String
```
```Scala
at: Int -> Char
```
Returns a string with the first n characters removed
```Scala
drop: Int -> String
```
Returns a string with the last n characters removed
```Scala
dropLast: Int -> String
```
```Scala
map: [Char -> T] -> List::T
```
```Scala
split: String -> List::String
```

## type Char
### unary
'b' inc == 'a'
```Scala
dec -> Char
```
'a' inc == 'b'
```Scala
inc -> Char
```
```Scala
isDigit -> Boolean
```
```Scala
isLetter -> Boolean
```
```Scala
isUpperCase -> Boolean
```
```Scala
isLowerCase -> Boolean
```
```Scala
isWhitespace -> Boolean
```
```Scala
isLetterOrDigit -> Boolean
```
Converts this character to lower case using Unicode mapping rules of the invariant locale
```Scala
lowercase -> String
```
see lowercase
```Scala
lowercaseChar -> Char
```
see lowercase
```Scala
uppercase -> Char
```
see lowercase
```Scala
uppercaseChar -> Char
```
```Scala
digitToInt -> Int
```
```Scala
echo -> Unit
```
### binary
a + 2 == c
```Scala
+ Int -> Char
```
```Scala
- Int -> Char
```
```Scala
== Char -> Boolean
```
```Scala
!= Char -> Boolean
```
```Scala
.. Char -> CharRange
```

## type Float
### unary
```Scala
echo -> Unit
```
```Scala
inc -> Float
```
```Scala
dec -> Float
```
```Scala
toInt -> Int
```
```Scala
toString -> String
```
```Scala
isInfinite -> Boolean
```
```Scala
isFinite -> Boolean
```
```Scala
isNaN -> Boolean
```
### binary
```Scala
== Float -> Boolean
```
```Scala
!= Float -> Boolean
```
```Scala
> Float -> Boolean
```
```Scala
< Float -> Boolean
```
```Scala
<= Float -> Boolean
```
```Scala
>= Float -> Boolean
```
```Scala
+ Float -> Float
```
```Scala
- Float -> Float
```
```Scala
* Float -> Float
```
```Scala
% Float -> Float
```
```Scala
/ Float -> Float
```
### keyword
```Scala
mod: Int -> Float
```
### unary
```Scala
toDouble -> Double
```

## type Long
### unary
```Scala
echo -> Unit
```
increments the number by 1
```Scala
inc -> Int
```
```Scala
dec -> Int
```
```Scala
toFloat -> Float
```
```Scala
toDouble -> Double
```
```Scala
toLong -> Long
```
```Scala
toString -> String
```
```Scala
toChar -> Char
```
### binary
```Scala
== Int -> Boolean
```
```Scala
!= Int -> Boolean
```
```Scala
> Int -> Boolean
```
```Scala
< Int -> Boolean
```
```Scala
<= Int -> Boolean
```
```Scala
>= Int -> Boolean
```
```Scala
+ Int -> Int
```
```Scala
- Int -> Int
```
```Scala
* Int -> Int
```
```Scala
% Int -> Int
```
```Scala
/ Int -> Int
```
Creates a range from this value to the specified (included), use ..< for excluded
```Scala
.. Int -> IntRange
```
Creates a range from this value to the specified (excluded)
```Scala
..< Int -> IntRange
```
### keyword
```Scala
plus: Int -> Int
```
Returns a Range from this value down to the specified to value with the step -1
```Scala
downTo: Int -> IntRange
```
1 to: 3 do: [it echo] // 1 2 3
```Scala
to: Int do: [Int -> Any] -> Unit
```
1 to: 10 by: 2 do: [it echo] // 1 3 5 7 9
```Scala
to: Int by: Int do: [Int -> Any] -> Unit
```
1 until: 4 do: [it echo] // 1 2 3
```Scala
until: Int do: [Int -> Any] -> Unit
```
3 downTo: 1 do: [it echo] // 3 2 1
```Scala
downTo: Int do: [Int -> Any] -> Unit
```

## type Double
### unary
```Scala
echo -> Unit
```
```Scala
inc -> Double
```
```Scala
dec -> Double
```
```Scala
toInt -> Int
```
```Scala
toString -> String
```
```Scala
isInfinite -> Boolean
```
```Scala
isFinite -> Boolean
```
```Scala
isNaN -> Boolean
```
### binary
```Scala
== Double -> Boolean
```
```Scala
!= Double -> Boolean
```
```Scala
> Double -> Boolean
```
```Scala
< Double -> Boolean
```
```Scala
<= Double -> Boolean
```
```Scala
>= Double -> Boolean
```
```Scala
+ Double -> Double
```
```Scala
- Double -> Double
```
```Scala
* Double -> Double
```
```Scala
% Double -> Double
```
```Scala
/ Double -> Double
```
### keyword
```Scala
mod: Int -> Double
```
### unary
```Scala
toFloat -> Float
```

## type Boolean
### unary
```Scala
not -> Boolean
```
```Scala
isFalse -> Boolean
```
```Scala
isTrue -> Boolean
```
```Scala
echo -> Unit
```
### binary
```Scala
== Boolean -> Boolean
```
```Scala
!= Boolean -> Boolean
```
```Scala
&& Boolean -> Boolean
```
```Scala
|| Boolean -> Boolean
```
### keyword
```Scala
or: Boolean -> Boolean
```
```Scala
and: Boolean -> Boolean
```
```Scala
xor: Boolean -> Boolean
```
```Scala
ifTrue: [ -> T] -> Unit
```
```Scala
ifFalse: [ -> T] -> Unit
```
```Scala
ifTrue: [ -> T] ifFalse: [ -> T] -> T
```
```Scala
ifFalse: [ -> T] ifTrue: [ -> T] -> T
```

## type Unit

## type Project

## type Bind

## type Compiler
### unary
```Scala
getArgs -> List::String
```
### static
```Scala
getName: Int -> String
```
```Scala
getType: Int -> TypeType
```

## type IntRange
### unary
```Scala
echo -> Unit
```
```Scala
isEmpty -> Boolean
```
```Scala
first -> Int
```
```Scala
last -> Int
```
Returns a random element from this range
```Scala
random -> Int
```
```Scala
toList -> List::Int
```
```Scala
asSequence -> Sequence::Int
```
```Scala
toMutableList -> MutableList::Int
```
### binary
```Scala
== IntRange -> Boolean
```
```Scala
!= IntRange -> Boolean
```
### keyword
The step of the progression
```Scala
step: Int -> IntRange
```
```Scala
forEach: [Int -> Unit] -> Unit
```
```Scala
forEachIndexed: [Int, Int -> Unit] -> Unit
```
```Scala
filter: [Int -> Boolean] -> IntRange
```
```Scala
contains: Int -> Boolean
```

## type CharRange
### unary
```Scala
echo -> Unit
```
```Scala
isEmpty -> Boolean
```
```Scala
first -> Char
```
```Scala
last -> Char
```
Returns a random element from this range
```Scala
random -> Char
```
```Scala
toList -> List::Char
```
```Scala
asSequence -> Sequence::Char
```
### binary
```Scala
== CharRange -> Boolean
```
```Scala
!= CharRange -> Boolean
```
### keyword
The step of the progression
```Scala
step: Char -> CharRange
```
```Scala
forEach: [Char -> Unit] -> Unit
```
```Scala
forEachIndexed: [Char, Char -> Unit] -> Unit
```
```Scala
filter: [Char -> Boolean] -> CharRange
```
```Scala
contains: Char -> Boolean
```

## type Any
### unary
```Scala
echo -> Unit
```
echo no new line
```Scala
echonnl -> Unit
```
```Scala
toString -> String
```
### binary
```Scala
== Any -> Boolean
```
```Scala
!= Any -> Boolean
```

## type Nothing

## type Null

## type UnknownGeneric
### unary
```Scala
echo -> Unit
```
echo no new line
```Scala
echonnl -> Unit
```
```Scala
toString -> String
```
```Scala
echoD -> T
```
### binary
```Scala
== Any -> Boolean
```
```Scala
!= Any -> Boolean
```

## type Test
  

## type Sequence
### unary
```Scala
count -> Int
```
```Scala
echo -> Unit
```
```Scala
first -> T
```
```Scala
last -> T
```
```Scala
firstOrNull -> T?
```
```Scala
lastOrNull -> T?
```
```Scala
toList -> List::T
```
```Scala
toMutableList -> MutableList::T
```
Like in Solitaire
```Scala
shuffled -> Sequence::T
```
All processing methods like filter map, will execute lazy
```Scala
asSequence -> Sequence::T
```
```Scala
isEmpty -> Boolean
```
```Scala
isNotEmpty -> Boolean
```
```Scala
reversed -> Sequence::T
```
```Scala
sum -> Int
```
### keyword
```Scala
forEach: [T -> Unit] -> Unit
```
```Scala
onEach: [T -> Unit] -> Sequence::T
```
```Scala
forEachIndexed: [Int, T -> Unit] -> Unit
```
```Scala
map: [T -> G] -> Sequence::G
```
```Scala
mapIndexed: [Int, T -> G] -> Sequence::G
```
```Scala
filter: [T -> Boolean] -> Sequence::T
```
```Scala
at: Int -> T
```
```Scala
atOrNull: Int -> T?
```
```Scala
contains: T -> Unit
```
Returns a list containing all elements except first n elements
```Scala
drop: Int -> Sequence::T
```
Returns a list containing all elements except last n elements.
```Scala
dropLast: Int -> Sequence::T
```
Splits this collection into a list of lists each not exceeding the given size
```Scala
chunked: Int -> List::List
```
```Scala
joinWith: String -> String
```
```Scala
joinTransform: [T -> G] -> String
```
```Scala
indexOfFirst: [T -> Boolean] -> Int
```
```Scala
indexOfLast: [T -> Boolean] -> Int
```
For sorting collection of objects by one of their field
```Scala
sortedBy: [T -> G] -> Sequence::T
```
```Scala
joinWith: String transform: [T -> G] -> String
```
Accumulates value starting with injected value and applying operation from left to right to current accumulator value and each element(kinjw fold)
```Scala
inject: G into: [G, T -> G] -> G
```
Accumulates value starting with the first element and applying operation from left to right to current accumulator value and each element
```Scala
reduce: [T, T -> G] -> T
```
Splits the original collection into pair of lists, where first list contains elements for which predicate yielded true, while second list contains elements for which predicate yielded false.
```Scala
predicate: [T -> Boolean] -> Pair(Sequence::T, Sequence::T)
```
```Scala
sumOf: [T -> T] -> T
```
Returns the first element matching the given predicate, or null if no such element was found.
```Scala
find: [T -> Boolean] -> T?
```
Returns a view of the portion of this list between the specified fromIndex (inclusive) and toIndex (exclusive). The returned list is backed by this list, so non-structural changes in the returned list are reflected in this list, and vice-versa.
```Scala
viewFrom: Int to: Int -> Sequence::T
```

## type List
### unary
```Scala
count -> Int
```
```Scala
echo -> Unit
```
```Scala
first -> T
```
```Scala
last -> T
```
```Scala
firstOrNull -> T?
```
```Scala
lastOrNull -> T?
```
```Scala
toList -> List::T
```
```Scala
toMutableList -> List::T
```
Like in Solitaire
```Scala
shuffled -> List::T
```
All processing methods like filter map, will execute lazy
```Scala
asSequence -> Sequence::T
```
```Scala
isEmpty -> Boolean
```
```Scala
isNotEmpty -> Boolean
```
```Scala
reversed -> List::T
```
```Scala
sum -> Int
```
### keyword
```Scala
forEach: [T -> Unit] -> Unit
```
```Scala
onEach: [T -> Unit] -> List::T
```
```Scala
forEachIndexed: [Int, T -> Unit] -> Unit
```
```Scala
map: [T -> G] -> List::G
```
```Scala
mapIndexed: [Int, T -> G] -> List::G
```
```Scala
filter: [T -> Boolean] -> List::T
```
```Scala
at: Int -> T
```
```Scala
atOrNull: Int -> T?
```
```Scala
contains: T -> Unit
```
Returns a list containing all elements except first n elements
```Scala
drop: Int -> List::T
```
Returns a list containing all elements except last n elements.
```Scala
dropLast: Int -> List::T
```
Splits this collection into a list of lists each not exceeding the given size
```Scala
chunked: Int -> List::List
```
```Scala
joinWith: String -> String
```
```Scala
joinTransform: [T -> G] -> String
```
```Scala
indexOfFirst: [T -> Boolean] -> Int
```
```Scala
indexOfLast: [T -> Boolean] -> Int
```
For sorting collection of objects by one of their field
```Scala
sortedBy: [T -> G] -> List::T
```
```Scala
joinWith: String transform: [T -> G] -> String
```
Accumulates value starting with injected value and applying operation from left to right to current accumulator value and each element(kinjw fold)
```Scala
inject: G into: [G, T -> G] -> G
```
Accumulates value starting with the first element and applying operation from left to right to current accumulator value and each element
```Scala
reduce: [T, T -> G] -> T
```
Splits the original collection into pair of lists, where first list contains elements for which predicate yielded true, while second list contains elements for which predicate yielded false.
```Scala
predicate: [T -> Boolean] -> Pair(Sequence::T, Sequence::T)
```
```Scala
sumOf: [T -> T] -> T
```
Returns the first element matching the given predicate, or null if no such element was found.
```Scala
find: [T -> Boolean] -> T?
```
Returns a view of the portion of this list between the specified fromIndex (inclusive) and toIndex (exclusive). The returned list is backed by this list, so non-structural changes in the returned list are reflected in this list, and vice-versa.
```Scala
viewFrom: Int to: Int -> List::T
```

## type MutableList
### unary
```Scala
count -> Int
```
```Scala
echo -> Unit
```
```Scala
first -> T
```
```Scala
last -> T
```
```Scala
firstOrNull -> T?
```
```Scala
lastOrNull -> T?
```
```Scala
toList -> List::T
```
```Scala
toMutableList -> MutableList::T
```
Like in Solitaire
```Scala
shuffled -> MutableList::T
```
All processing methods like filter map, will execute lazy
```Scala
asSequence -> Sequence::T
```
```Scala
isEmpty -> Boolean
```
```Scala
isNotEmpty -> Boolean
```
```Scala
reversed -> MutableList::T
```
```Scala
sum -> Int
```
```Scala
clear -> Unit
```
### keyword
```Scala
forEach: [T -> Unit] -> Unit
```
```Scala
onEach: [T -> Unit] -> MutableList::T
```
```Scala
forEachIndexed: [Int, T -> Unit] -> Unit
```
```Scala
map: [T -> G] -> MutableList::G
```
```Scala
mapIndexed: [Int, T -> G] -> MutableList::G
```
```Scala
filter: [T -> Boolean] -> MutableList::T
```
```Scala
at: Int -> T
```
```Scala
atOrNull: Int -> T?
```
```Scala
contains: T -> Unit
```
Returns a list containing all elements except first n elements
```Scala
drop: Int -> MutableList::T
```
Returns a list containing all elements except last n elements.
```Scala
dropLast: Int -> MutableList::T
```
Splits this collection into a list of lists each not exceeding the given size
```Scala
chunked: Int -> List::List
```
```Scala
joinWith: String -> String
```
```Scala
joinTransform: [T -> G] -> String
```
```Scala
indexOfFirst: [T -> Boolean] -> Int
```
```Scala
indexOfLast: [T -> Boolean] -> Int
```
For sorting collection of objects by one of their field
```Scala
sortedBy: [T -> G] -> MutableList::T
```
```Scala
joinWith: String transform: [T -> G] -> String
```
Accumulates value starting with injected value and applying operation from left to right to current accumulator value and each element(kinjw fold)
```Scala
inject: G into: [G, T -> G] -> G
```
Accumulates value starting with the first element and applying operation from left to right to current accumulator value and each element
```Scala
reduce: [T, T -> G] -> T
```
Splits the original collection into pair of lists, where first list contains elements for which predicate yielded true, while second list contains elements for which predicate yielded false.
```Scala
predicate: [T -> Boolean] -> Pair(Sequence::T, Sequence::T)
```
```Scala
sumOf: [T -> T] -> T
```
Returns the first element matching the given predicate, or null if no such element was found.
```Scala
find: [T -> Boolean] -> T?
```
Returns a view of the portion of this list between the specified fromIndex (inclusive) and toIndex (exclusive). The returned list is backed by this list, so non-structural changes in the returned list are reflected in this list, and vice-versa.
```Scala
viewFrom: Int to: Int -> MutableList::T
```
```Scala
add: T -> Boolean
```
```Scala
addFirst: T -> Unit
```
```Scala
addAll: MutableList::T -> Boolean
```
```Scala
removeAt: Int -> Unit
```
```Scala
remove: T -> Unit
```
like C arr[x] = y
```Scala
at: Int put: T -> Unit
```

## type MutableSet
### unary
```Scala
count -> Int
```
```Scala
echo -> Unit
```
```Scala
clear -> Unit
```
```Scala
first -> T
```
```Scala
last -> T
```
```Scala
toList -> List::T
```
```Scala
toMutableList -> List::T
```
### binary
```Scala
== MutableSet::T -> Boolean
```
```Scala
!= MutableSet::T -> Boolean
```
```Scala
+ T -> MutableSet::T
```
```Scala
- T -> MutableSet::T
```
### keyword
```Scala
forEach: [T -> Unit] -> Unit
```
```Scala
onEach: [T -> Unit] -> MutableSet::T
```
```Scala
map: [T -> G] -> MutableSet::G
```
```Scala
mapIndexed: [Int, T -> G] -> MutableSet::G
```
```Scala
filter: [T -> Boolean] -> MutableSet::T
```
```Scala
add: T -> Unit
```
```Scala
remove: T -> Boolean
```
```Scala
addAll: MutableSet::T -> Boolean
```
```Scala
intersect: MutableSet::T -> MutableSet::T
```
```Scala
contains: T -> Boolean
```
```Scala
containsAll: MutableSet::T -> Boolean
```

## type MutableMap
### unary
```Scala
count -> Int
```
```Scala
isEmpty -> Boolean
```
```Scala
isNotEmpty -> Boolean
```
```Scala
echo -> Unit
```
```Scala
clear -> Unit
```
```Scala
keys -> MutableSet::T
```
```Scala
values -> MutableSet::G
```
### binary
```Scala
+ MutableMap(T, G) -> MutableMap(T, G)
```
```Scala
- MutableMap(T, G) -> G
```
### keyword
```Scala
forEach: [T, G -> Unit] -> Unit
```
```Scala
map: [T, G -> Unit] -> Unit
```
```Scala
filter: [T, G -> Unit] -> Unit
```
```Scala
at: T put: G -> Unit
```
```Scala
at: T -> G?
```
```Scala
remove: T -> T?
```
```Scala
putAll: MutableMap(T, G) -> Unit
```
```Scala
containsKey: T -> Boolean
```
```Scala
containsValue: G -> Boolean
```

## type TypeType
- name: String  
- fields: MutableMap(String, TypeType)  
Bindings  

## type StringBuilder
### unary
```Scala
toString -> String
```
```Scala
first -> String
```
```Scala
last -> String
```
```Scala
count -> Int
```
### keyword
```Scala
append: Any -> StringBuilder
```
```Scala
appendLine: Any -> StringBuilder
```
### static
```Scala
withText: String -> StringBuilder
```

# package okio.Path
Bindings  

## type Path
- name: String  
- parent: okio.Path.Path?  
- root: okio.Path.Path?  
- segments: List::String  
- volumeLetter: Char?  
### unary
```Scala
normalized -> okio.Path.Path
```
```Scala
toString -> String
```
### binary
```Scala
/ String -> okio.Path.Path
```
```Scala
== okio.Path.Path -> Boolean
```
```Scala
!= okio.Path.Path -> Boolean
```
### keyword
```Scala
renameTo: String -> Unit
```

# package okio
Bindings  

## type FileSystem
### static
```Scala
read: okio.Path.Path -> String
```
```Scala
write: okio.Path.Path content: String -> Unit
```
```Scala
metadata: okio.Path.Path -> okio.FileMetadata
```
```Scala
exists: okio.Path.Path -> Boolean
```
```Scala
list: okio.Path.Path -> List::okio.Path.Path
```
```Scala
listRecursively: okio.Path.Path -> List::okio.Path.Path
```
```Scala
delete: okio.Path.Path -> Unit
```
```Scala
deleteRecursively: okio.Path.Path -> Unit
```
```Scala
createDirectory: okio.Path.Path -> Unit
```
```Scala
createDirectories: okio.Path.Path -> Unit
```
```Scala
copyFrom: okio.Path.Path to: okio.Path.Path -> Unit
```
```Scala
moveFrom: okio.Path.Path to: okio.Path.Path -> Unit
```

## type FileMetadata
- isRegularFile: Boolean  
- isDirectory: Boolean  
- symlinkTarget: okio.Path.Path?  
- size: Int?  
- createdAtMillis: Int?  
- lastModifiedAtMillis: Int?  
- lastAccessedAtMillis: Int?  

