# Run

main has 2 codeblocks 


# Testing with curl

## Ping
```bash
curl -X GET http://localhost:9000/hi
```


## Get all notes
```bash
curl -X GET http://localhost:9000/getNotes

```

## Create new note
```bash
curl -X POST http://localhost:9000/saveNote \
  -H "Content-Type: application/json" \
  -d '{
        "id": null,
        "created_at": 0,
        "updated_at": 0,
        "title": "First note",
        "content": "First note with niva backend!",
        "color": "#ffcc00",
        "tags": ["sas", "tag"]
      }'

```

## Delete by ID
```bash
curl -X POST http://localhost:9000/deleteNote \
  -H "Content-Type: application/json" \
  -d '{"id": "1"}'
```

## Update note

```bash
curl -X POST http://localhost:9000/updateNote \
  -H "Content-Type: application/json" \
  -d '{
        "id": 1,
        "created_at": 1723700000000,
        "updated_at": 0,
        "title": "Обновлённая заметка",
        "content": "Текст заметки после изменений",
        "color": "#00ff99",
        "tags": ["личное", "прочитать"]
      }'

```

