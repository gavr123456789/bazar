# Run

main has 2 codeblocks 


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
