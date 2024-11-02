# How to use

```Scala
@Serializable
type Person name: String age: Int

person = Person name: "Alice" age: 35
// serialization to JSON
str = Json encode: person
str echo // {"name":"Alice","age":35}

// deserialization from JSON string
personFromStr = Json::Person decode: str
personFromStr echo // Person name: Alice age: 35
```