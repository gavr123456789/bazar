



type MyException* = object of Exception
  customField: int


proc foo = 
  let err = new(MyException)
  err.msg = "heyyy"
  err.customField = 42
  raise err


echo 1
foo()

jkk
фуывфыв
asd
asdqwe