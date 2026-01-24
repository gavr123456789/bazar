# Process

## java.lang
### Run command

Using process.dsl.niva

```Scala
"pwd" run
"pwd" runInDir: "../.."
```

```Scala
type Size w: Int h: Int
getPictureSize = [ path::String ->
  size = {"identify" "-format" "%wx%h" path} runToString
  q = size split: "x"
  Size w: (q at: 0 |> toInt) h: (q at: 1 |> toInt)
]
```
### Get env
```Scala
Process getEnv: "JAVA_HOME" |> echo
```

