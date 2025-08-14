# Run

main has 2 codeblocks 
```Scala
runServer = [
    PersonsDB createTable
    routes = Router routes: {route routeSavePersonToDb routeGetAllPersons}
    routes asServer: (SunHttp port: 9000), start
    
    "hosting on http://localhost:9000" log
    "current routes:\n$routes" log
] do

testDB = [
    PersonsDB createTable
    PersonsDB savePerson: (Person name: "Alice" age: 25)
    PersonsDB savePerson: (Person name: "Bob" age: 25)
    PersonsDB readTable log
]
```
`runServer do` - runs the server  
`testDB do` - create sqlite db only  

`niva run` - compile and run

# Testing with curl

## Ping
```bash
curl -X GET http://localhost:9000/hi
```


## Get all persons
```bash
curl -X GET http://localhost:9000/getPersons

```

## Post new person
```bash
curl -X POST http://localhost:9000/savePerson \
  -H "Content-Type: application/json" \
  -d '{"name": "Alice", "age": 30}'
```
