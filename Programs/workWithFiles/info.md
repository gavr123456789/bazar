
## type FileSystem
### static
	read: okio.Path.Path -> String
	write: okio.Path.Path content: String -> Unit
	metadata: okio.Path.Path -> okio.FileMetadata
	exists: okio.Path.Path -> Boolean
	list: okio.Path.Path -> List::okio.Path.Path
	listRecursively: okio.Path.Path -> List::okio.Path.Path
	delete: okio.Path.Path -> Unit
	deleteRecursively: okio.Path.Path -> Unit
	createDirectory: okio.Path.Path -> Unit
	createDirectories: okio.Path.Path -> Unit
	copyFrom: okio.Path.Path to: okio.Path.Path -> Unit
	moveFrom: okio.Path.Path to: okio.Path.Path -> Unit


## type Path
- name: String  
- parent: okio.Path.Path?  
- root: okio.Path.Path?  
- segments: List::String  
- volumeLetter: Char?  
### unary
	normalized -> okio.Path.Path
	toString -> String
### binary
	/ okio.Path.Path -> okio.Path.Path
	== okio.Path.Path -> Boolean
	!= okio.Path.Path -> Boolean
### keyword
	renameTo: String -> Unit


# package core

## type Int
### unary
	echo -> Unit
	inc -> Int
	dec -> Int
	toFloat -> Float
	toDouble -> Double
	toString -> String
	toChar -> Char
### binary
	== Int -> Boolean
	!= Int -> Boolean
	> Int -> Boolean
	< Int -> Boolean
	<= Int -> Boolean
	>= Int -> Boolean
	+ Int -> Int
	- Int -> Int
	* Int -> Int
	% Int -> Int
	/ Int -> Int
	.. Int -> IntRange
	..< Int -> IntRange
### keyword
	plus: Int -> Int
	to: Int -> IntRange
	downTo: Int -> IntRange
	to: Int do: common.[Int -> Any] -> Int
	until: Int do: common.[Int -> Any] -> Int
	downTo: Int do: common.[Int -> Any] -> Int

## type String
### unary
	count -> Int
	trim -> String
	trimIndent -> String
	isDigit -> Boolean
	isBlank -> Boolean
	isEmpty -> Boolean
	isAlphaNumeric -> Boolean
	isNotBlank -> Boolean
	isNotEmpty -> Boolean
	toInt -> Int
	toFloat -> Float
	toDouble -> Double
	echo -> Unit
	toPath -> okio.Path.Path
### binary
	+ String -> String
	== String -> Boolean
	!= String -> Boolean
### keyword
	replace: String with: String -> String
	forEach: common.[Char -> Unit] -> Unit
	forEachIndexed: common.[Int, Char -> Unit] -> Unit
	filter: common.[Char -> Boolean] -> String
	substring: Int -> String
	from: Int to: Int -> String
	at: Int -> Char
	drop: Int -> String
	dropLast: Int -> String
	split: String -> List::String

## type Char
### unary
	dec -> Char
	inc -> Char
	isDigit -> Boolean
	isLetter -> Boolean
	isUpperCase -> Boolean
	isLowerCase -> Boolean
	isWhitespace -> Boolean
	isLetterOrDigit -> Boolean
	lowercase -> String
	lowercaseChar -> Char
	uppercaseChar -> Char
	digitToInt -> Int
	echo -> Unit
### binary
	+ String -> String
	- String -> String
	== String -> Boolean
	!= String -> Boolean

## type Float
### unary
	echo -> Unit
	inc -> Float
	dec -> Float
	toInt -> Int
	toString -> String
	isInfinite -> Boolean
	isFinite -> Boolean
	isNaN -> Boolean
### binary
	== Float -> Boolean
	!= Float -> Boolean
	> Float -> Boolean
	< Float -> Boolean
	<= Float -> Boolean
	>= Float -> Boolean
	+ Float -> Float
	- Float -> Float
	* Float -> Float
	% Float -> Float
	/ Float -> Float
### keyword
	mod: Int -> Float
### unary
	toDouble -> Double

## type Double
### unary
	echo -> Unit
	inc -> Float
	dec -> Float
	toInt -> Int
	toString -> String
	isInfinite -> Boolean
	isFinite -> Boolean
	isNaN -> Boolean
### binary
	== Float -> Boolean
	!= Float -> Boolean
	> Float -> Boolean
	< Float -> Boolean
	<= Float -> Boolean
	>= Float -> Boolean
	+ Float -> Float
	- Float -> Float
	* Float -> Float
	% Float -> Float
	/ Float -> Float
### keyword
	mod: Int -> Float
### unary
	toFloat -> Float

## type Boolean
### unary
	not -> Boolean
	isFalse -> Boolean
	isTrue -> Boolean
	echo -> Unit
### binary
	== Boolean -> Boolean
	!= Boolean -> Boolean
	&& Boolean -> Boolean
	|| Boolean -> Boolean
### keyword
	or: Boolean -> Boolean
	and: Boolean -> Boolean
	xor: Boolean -> Boolean
	ifTrue: common.[ -> T] -> Unit
	ifFalse: common.[ -> T] -> Unit
	ifTrue: common.[ -> T] ifFalse: common.[ -> T] -> common.T
	ifFalse: common.[ -> T] ifTrue: common.[ -> T] -> common.T

## type Unit

## type Project

## type Bind

## type IntRange
### unary
	echo -> Unit
	isEmpty -> Boolean
	first -> Int
	last -> Int
	random -> Int
### binary
	== IntRange -> Boolean
	!= IntRange -> Boolean
### keyword
	step: Int -> IntRange
	forEach: common.[Int -> Unit] -> Unit
	forEachIndexed: common.[Int, Int -> Unit] -> Unit
	filter: common.[Int -> Boolean] -> IntRange
	contains: Int -> Boolean

## type Any
### unary
	echo -> Unit
	echonnl -> Unit
### binary
	== Any -> Boolean
	!= Any -> Boolean

## type Nothing

## type Null
  

## type Sequence
### unary
	count -> Int
	echo -> Unit
	first -> common.T
	last -> common.T
	clear -> Unit
	toList -> List::common.T
	toMutableList -> Sequence::common.T
	shuffled -> Sequence::common.T
	asSequence -> Sequence::common.T
### keyword
	forEach: common.[T -> Unit] -> Unit
	onEach: common.[T -> Unit] -> Sequence::common.T
	forEachIndexed: common.[Int, T -> Unit] -> Unit
	map: common.[T -> G] -> Sequence::common.G
	mapIndexed: common.[Int, T -> G] -> Sequence::common.G
	filter: common.[T -> Boolean] -> Sequence::common.T
	add: common.T -> Unit
	at: Int -> common.T
	atOrNull: Int -> common.T?
	removeAt: Int -> Unit
	addAll: Sequence::common.T -> Boolean
	drop: Int -> Sequence::common.T
	dropLast: Int -> Sequence::common.T
	chunked: Int -> List::List::common.T
	joinWith: String -> String
	joinTransform: common.[T -> G] -> String
	joinWith: String transform: common.[T -> G] -> String
	viewFrom: Int to: Int -> Sequence::common.T
	at: Int put: common.T -> Unit

## type List
### unary
	count -> Int
	echo -> Unit
	first -> common.T
	last -> common.T
	clear -> Unit
	toList -> List::common.T
	toMutableList -> List::common.T
	shuffled -> List::common.T
	asSequence -> Sequence::common.T
### keyword
	forEach: common.[T -> Unit] -> Unit
	onEach: common.[T -> Unit] -> List::common.T
	forEachIndexed: common.[Int, T -> Unit] -> Unit
	map: common.[T -> G] -> List::common.G
	mapIndexed: common.[Int, T -> G] -> List::common.G
	filter: common.[T -> Boolean] -> List::common.T
	add: common.T -> Unit
	at: Int -> common.T
	atOrNull: Int -> common.T?
	removeAt: Int -> Unit
	addAll: List::common.T -> Boolean
	drop: Int -> List::common.T
	dropLast: Int -> List::common.T
	chunked: Int -> List::List::common.T
	joinWith: String -> String
	joinTransform: common.[T -> G] -> String
	joinWith: String transform: common.[T -> G] -> String
	viewFrom: Int to: Int -> List::common.T
	at: Int put: common.T -> Unit

## type MutableList
### unary
	count -> Int
	echo -> Unit
	first -> common.T
	last -> common.T
	clear -> Unit
	toList -> List::common.T
	toMutableList -> MutableList::String
	shuffled -> MutableList::String
	asSequence -> Sequence::common.T
### keyword
	forEach: common.[T -> Unit] -> Unit
	onEach: common.[T -> Unit] -> MutableList::String
	forEachIndexed: common.[Int, T -> Unit] -> Unit
	map: common.[T -> G] -> MutableList::common.G
	mapIndexed: common.[Int, T -> G] -> MutableList::common.G
	filter: common.[T -> Boolean] -> MutableList::String
	add: common.T -> Unit
	at: Int -> common.T
	atOrNull: Int -> common.T?
	removeAt: Int -> Unit
	addAll: MutableList::String -> Boolean
	drop: Int -> MutableList::String
	dropLast: Int -> MutableList::String
	chunked: Int -> List::List::common.T
	joinWith: String -> String
	joinTransform: common.[T -> G] -> String
	joinWith: String transform: common.[T -> G] -> String
	viewFrom: Int to: Int -> MutableList::String
	at: Int put: common.T -> Unit
### unary
	run -> Unit

## type MutableSet
### unary
	count -> Int
	echo -> Unit
	clear -> Unit
	first -> common.T
	last -> common.T
	toList -> List::common.T
	toMutableList -> List::common.T
### binary
	== MutableSet::common.T -> Boolean
	!= MutableSet::common.T -> Boolean
	+ common.T -> MutableSet::common.T
	- common.T -> MutableSet::common.T
### keyword
	forEach: common.[T -> Unit] -> Unit
	onEach: common.[T -> Unit] -> MutableSet::common.T
	map: common.[T -> G] -> MutableSet::common.G
	mapIndexed: common.[Int, T -> G] -> MutableSet::common.G
	filter: common.[T -> Boolean] -> MutableSet::common.T
	add: common.T -> Unit
	remove: common.T -> Boolean
	addAll: MutableSet::common.T -> Boolean
	intersect: MutableSet::common.T -> MutableSet::common.T
	contains: common.T -> Boolean
	containsAll: MutableSet::common.T -> Boolean

## type MutableMap
### unary
	count -> Int
	echo -> Unit
	clear -> Unit
	values -> List::common.T
	keys -> MutableSet::common.T
### binary
	+ MutableMap(common.T, common.G) -> MutableMap(common.T, common.G)
	- MutableMap(common.T, common.G) -> common.G
### keyword
	forEach: common.[T, G -> Unit] -> Unit
	map: common.[T -> G] -> List::common.G
	filter: common.[T -> Boolean] -> MutableMap(common.T, common.G)
	at: common.T put: common.G -> Unit
	at: common.T -> common.G?
	remove: common.T -> Int
	addAll: MutableMap(common.T, common.G) -> Unit
	containsKey: common.T -> Boolean
	containsValue: common.G -> Boolean
Bindings  

## type Error
- message: String  
### unary
	echo -> Unit
### keyword
	addSuppressed: Error -> Unit
### static
	throwWithMessage: String -> Nothing

## type StringBuilder
### unary
	toString -> String
### keyword
	append: Any -> StringBuilder
### static
	withText: String -> StringBuilder

# package main
  

## type Person
- name: String  
- age: Int  

# package okio.Path
Bindings  

## type Path
- name: String  
- parent: okio.Path.Path?  
- root: okio.Path.Path?  
- segments: List::String  
- volumeLetter: Char?  
### unary
	normalized -> okio.Path.Path
	toString -> String
### binary
	/ okio.Path.Path -> okio.Path.Path
	== okio.Path.Path -> Boolean
	!= okio.Path.Path -> Boolean
### keyword
	renameTo: String -> Unit

# package okio
Bindings  

## type FileSystem
### static
	read: okio.Path.Path -> String
	write: okio.Path.Path content: String -> Unit
	metadata: okio.Path.Path -> okio.FileMetadata
	exists: okio.Path.Path -> Boolean
	list: okio.Path.Path -> List::okio.Path.Path
	listRecursively: okio.Path.Path -> List::okio.Path.Path
	delete: okio.Path.Path -> Unit
	deleteRecursively: okio.Path.Path -> Unit
	createDirectory: okio.Path.Path -> Unit
	createDirectories: okio.Path.Path -> Unit
	copyFrom: okio.Path.Path to: okio.Path.Path -> Unit
	moveFrom: okio.Path.Path to: okio.Path.Path -> Unit

## type FileMetadata
- isRegularFile: Boolean  
- isDirectory: Boolean  
- symlinkTarget: okio.Path.Path?  
- size: Int?  
- createdAtMillis: Int?  
- lastModifiedAtMillis: Int?  
- lastAccessedAtMillis: Int?  

# package java.lang
Bindings  

## type ProcessBuilder
- command: MutableList::String  
### unary
	start -> java.lang.Process
	redirectOutput -> java.lang.ProcessBuilder

## type Process
### unary
	waitFor -> Int

