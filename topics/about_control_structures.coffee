module "About Control Structures (topics/about_control_structures.js)"
test "if", ->
  isPositive = false
  isPositive = true  if 2 > 0
  equals isPositive, __, "what is the value of isPositive?"

test "unless", ->
  isNegative = false
  isNegative = true unless 2 < 0
  equals isNegative, __, "what is the value of isNegative?"

test "for", ->
  counter = 10
  i = 1

  while i <= 3
    counter = counter + i
    i++
  equals counter, __, "what is the value of counter?"

test "for in", ->
  person = 
    name: "Amory Blaine"
    age: 102

  result = ""
  for property_name of person
    result = result + property_name
  equals result, __, "what is the value of result?"

test "ternary operator", ->
  fruit = (if true then "apple" else "orange")
  equals fruit, __, "what is the value of fruit?"
  fruit = (if false then "apple" else "orange")
  equals fruit, __, "now what is the value of fruit?"

test "switch", ->
  result = 0
  switch 2
    when 1
      result = 1
    when 1 + 1
      result = 2
  equals result, __, "what is the value of result?"

test "switch default case", ->
  result = "Pippin"
  switch "m"
    when "f"
      result = "Frodo"
    when "s"
      result = "Samwise"
    else
      result = "Merry"
  equals result, __, "what is the value of result?"

test "null coallescion", ->
  result = null or "a value"
  equals result, __, "what is the value of result?"
