module "About Scope (topics/about_scope.js)"
window.thisIsAGlobalVariable = 77
test "global variables", ->
  equals thisIsAGlobalVariable, __, "is thisIsAGlobalVariable defined in this scope?"

test "variables declared inside of a function", ->
  outerVariable = "outer"
  (->
    innerVariable = "inner"
    equals outerVariable, __, "is outerVariable defined in this scope?"
    equals innerVariable, __, "is innerVariable defined in this scope?"
  )()
  equals outerVariable, __, "is outerVariable defined in this scope?"
  isInnerVariableDefined = true
  try
    innerVariable
  catch e
    isInnerVariableDefined = false
  equals isInnerVariableDefined, __, "is innerVariable defined in this scope?"
