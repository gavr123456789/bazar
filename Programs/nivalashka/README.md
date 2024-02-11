Set of methods for doing typical things that are needed in bash  
It's inspired by [babashka](https://babashka.org/)  

## Examples
### Run command
```Scala
"pwd" run
"pwd" runInDir: "../.."
```

### List files
```Scala
"." ls echo
"." lsR // list recursive
```
