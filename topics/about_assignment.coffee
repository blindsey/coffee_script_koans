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

test "destructuring assignment", ->
  theBait   = 1000
  theSwitch = 0

  [theBait, theSwitch] = [theSwitch, theBait]
  equals theBait, __, "What does theBait equal?"
  
test "nested de-structuring assignment", ->

  getTheFuturists = ->
    {
      sculptor: "Umberto Boccioni"
      painter:  "Vladimir Burliuk"
      poet:
        name:   "F.T. Marinetti"
        address: [
          "Via Roma 42R"
          "Bellagio, Italy 22021"
        ]
    }

  {poet: {address: [street, city]}} = getTheFuturists()
  
  equals street, __, "What street does the poet live on?"
