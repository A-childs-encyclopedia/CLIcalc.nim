import strutils
import std/math

when isMainModule:

  proc pow(x: int64, y: int64): int64 =
    return x ^ y

  proc mul(x: int64, y: int64): int64 =
    return x * y

  proc divide(x: float64, y: float64): float64 =
    return x / y

  proc subtract(x: int64, y: int64): int64 =
    return x - y

  proc addxy(x: int64, y: int64): int64 =
    return x + y

  echo("Hi, what function would you like to use?\n(mul, sub, add, div, exit)")
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
  elif (fun == "sqr"):
    stdout.write("x: ")  
    var x = readLine(stdin).parseFloat().sqrt()
    echo("result: ", x)
  elif (fun == "tru"):
    stdout.write("x: ")  
    var x = readLine(stdin).parseFloat().trunc()
    echo("result: ", x)
  elif (fun == "hcf"):
    stdout.write("x: ")  
    var x = readLine(stdin).parseInt()
    stdout.write("y: ")
    var y = readLine(stdin).parseInt()
    var z = math.gcd(x, y)
    echo("result: ", z) 
  elif (fun == "mod"):
    stdout.write("x: ")  
    var x = readLine(stdin).parseFloat()
    stdout.write("y: ")
    var y = readLine(stdin).parseFloat()
    var z = math.`mod`(x, y)
    echo("result: ", z)
  elif (fun == "pow"):
    stdout.write("x: ")  
    var x = readLine(stdin).parseInt()
    stdout.write("y: ")
    var y = readLine(stdin).parseInt()
    var z = pow(x, y)
    echo("result: ", z)        
  elif (fun == "exit"):
    quit()
  else:
    echo("Function not found. Exiting with error code 1")
    quit(1)