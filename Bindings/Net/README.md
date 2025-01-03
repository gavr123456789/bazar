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

## hhtp4k
```Scala
// creating printingClient
client = JavaHttpClient new
printingClient::HttpHandler = PrintResponse new |> then: client
// create request and send it
request = Request method: Method.GET uri: "http://localhost:9000"
responce = printingClient Request: request
```

# Server

## hhtp4k

```Scala
path = "/hi" bind: Method.GET
// bind path to handler
route = path to: [
    response = Response status: Status.OK
    response body: "Hello, from niva server!"
]

// example with Post that deserialize Person from JSON
pathPost = "/person" bind: Method.POST
routePost = pathPost to: [
    person = Json::Person decode: it body strPayload 
    response = Response status: Status.OK
    response body: person toString
]

// put every route together and run as server
routes = Router routes: {route, routePost}
routes asServer: (SunHttp port: 9000) |> start
```

run to test Post 
```
curl -X POST http://localhost:9000/person \
                      -H "Content-Type: application/json" \
                      -d '{"name": "Alex", "age": 25}'
```
and get
```
curl http://localhost:9000/hi
```
will ansver `Hello, from niva server!⏎`

You can find full example in Examples/http4kserver