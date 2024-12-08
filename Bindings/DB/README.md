# SQL

## java.sql

create a table of Persons and read values from it
```Scala
createTable = [
  databaseUrl = "jdbc:sqlite:people.db"
  createTableQuery = """
    CREATE TABLE IF NOT EXISTS persons (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        age INTEGER NOT NULL
    ); """ trimIndent
  insertQuery = "INSERT INTO persons (name, age) VALUES (?, ?)"

  connection = DriverManager getConnection: databaseUrl
  statement = connection createStatement
  statement execute: createTableQuery

  preparedStatement = connection prepareStatement: insertQuery
  preparedStatement
    addPerson: (Person name: "Alice" age: 25);
    addPerson: (Person name: "Bob" age: 30);
    addPerson: (Person name: "Charlie" age: 35)
  connection close 
]


readTable = [
  databaseUrl = "jdbc:sqlite:people.db"
  selectQuery = "SELECT id, name, age FROM persons WHERE age > ?"
  connection = DriverManager getConnection: databaseUrl
  prepared = connection prepareStatement: selectQuery
  prepared setInt: 1 value: 22
  // exec request
  resultSet = prepared executeQuery
  persons = resultSet getPersons
  persons forEach: [it echo]

  connection close
]

type Person name: String age: Int 
PreparedStatement addPerson: p::Person -> Unit! = [
  .setString: 1 value: p name
  .setInt: 2 value: p age
  .executeUpdate
  "added $p" echo
]

ResultSet getPersons -> MutableList::Person! = [
  result::MutableList::Person = {}
  [.next] whileTrue: [
    name = .getString: "name"
    age = .getInt: "age"
    result add: (Person name: name age: age)
  ]
  ^ result
]


createTable do 
readTable do 

```


# NOSQL
TODO