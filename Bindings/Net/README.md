# Client

## java.net
```Scala
client = HttpClient newHttpClient
request = HttpRequest newBuilder 
    uri: (URI create: "https://postman-echo.com/get") |> 
    build
response = client send: request handler: (HttpResponse ofString)
response body echo
```

# Server
TODO