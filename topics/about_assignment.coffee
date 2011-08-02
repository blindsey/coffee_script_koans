module "About Assignment (topics/about_assignment.js)"
test "local variables", ->
  temp = __
  equals 1, temp, "Assign a value to the variable temp"

test "existential operator", ->
  isPositive = true
  isPositive = false if temp?
  equals isPositive, __, "What is the value of isPositive?"

test "existential assignment", ->
  speed ?= 75
  equals speed, __, "What does speed equal?"

test "existential ternary", ->
  footprints = yeti ? 'bear'
  equals footprints, __, "What does footprints equal?"
