import strutils

when isMainModule:

  proc mul(x: int64, y: int64): int64 =
    return x * y

  proc divide(x: float64, y: float64): float64 =
    return x / y

  proc subtract(x: int64, y: int64): int64 =
    return x - y

  proc addxy(x: int64, y: int64): int64 =
    return x + y

  echo("Hi, what function would you like to use? (mul, sub, add, div, exit)")
  var fun: string = readLine(stdin)
  if (fun == "add"):
    stdout.write("x: ")
    var x = readline(stdin).parseInt() 
    stdout.write("y: ")
    var y = readline(stdin).parseInt() 
    var z = addxy(x, y)
    echo("result: ", z)
  elif (fun == "sub"):
    stdout.write("x: ")
    var x = readline(stdin).parseInt()
    stdout.write("y: ")
    var y = readline(stdin).parseInt()
    var z = subtract(x, y)
    echo("result: ", z)
  elif (fun == "div"):
    stdout.write("x: ")
    var x = readline(stdin).parseFloat()
    stdout.write("y: ")
    var y = readline(stdin).parseFloat()
    var z = divide(x, y)
    echo("result: ", z)
  elif (fun == "mul"):
    stdout.write("x: ")
    var x = readline(stdin).parseInt()
    stdout.write("y: ")
    var y = readline(stdin).parseInt()
    var z = mul(x, y)
    echo("result: ", z)
  elif (fun == "exit"):
    quit()
  else:
    echo("Function not found. Exiting with error code 1")
    quit(1)