module "About Operators (topics/about_operators.js)"
test "addition", ->
  result = 0
  i = 0
  
  while i <= 5
    result = result + i
    i++
  equals result, __, "What is the value of result?"

test "assignment addition", ->
  result = 0
  i = 0
  
  while i <= 5
    result += i
    i++
  equals result, __, "What is the value of result?"

test "subtraction", ->
  result = 5
  i = 0
  
  while i <= 2
    result = result - i
    i++
  equals result, __, "What is the value of result?"

test "assignment subtraction", ->
  result = 5
  i = 0
  
  while i <= 2
    result -= i
    i++
  equals result, __, "What is the value of result?"

test "modulus", ->
  result = 10
  x = 5
  result %= x
  equals result, __, "What is the value of result?"
  
test "chained comparison", ->
  cholesterol = 127

  healthy = 200 > cholesterol > 60
  equals healthy, __, "is a cholestor of 127 healthy?"
