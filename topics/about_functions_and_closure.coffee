module "About Functions And Closure (topics/about_functions_and_closure.js)"
test "assigning functions to variables", ->
  result = "a"
  changeResult = ->
    result = "b"
  changeResult()
  equals result, __, "what is the value of result?"

test "self invoking functions", ->
  publicValue = "shared"
  ((pv) ->
    secretValue = "password"
    equals pv, __, "what is the value of pv?"
    equals typeof (secretValue), "__", "is secret value available in this context?"
    equals typeof (pv), "__", "is public value available in this context?"
  ) publicValue
  equals typeof (secretValue), "__", "is secret value available in this context?"
  equals typeof (publicValue), "__", "is public value available in this context?"

test "arguments array", ->
  add = ->
    total = 0
    i = 0
    
    while i < arguments.length
      i++
      # complete the implementation of this method so that it returns the sum of its arguments
    # __
  
  equals add(1, 2, 3, 4, 5), 15, "add 1,2,3,4,5"
  equals add(4, 7, -2), 9, "add 1,2,3,4,5"
