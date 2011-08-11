module "About Prototypal Inheritance (topics/about_prototypal_inheritance.js)"

class Mammal
  constructor: (@name) ->
  sayHi: ->
    "Hello, my name is " + @name
  favouriteSaying: ->
    @name + "'s favourite saying is " + @sayHi()

test "defining a 'class'", ->
  eric = new Mammal "Eric"
  equals eric.sayHi(), __, "what will Eric say?"

test "more functions", ->
  bobby = new Mammal "Bobby"
  equals bobby.favouriteSaying(), __, "what is Bobby's favourite saying?"

test "calling functions added to a prototype after an object was created", ->
  paul = new Mammal "Paul"
  Mammal::numberOfLettersInName = ->
    @name.length
  
  equals paul.numberOfLettersInName(), __, "how long is Paul's name?"

class Bat extends Mammal 
  constructor: (name, @wingspan) -> super name
  favouriteSaying: ->
    "Bats are very similar to other mammals: " + super()

test "Inheritance", ->
  lenny = new Bat("Lenny", "1.5m")
  equals lenny.sayHi(), __, "what does Lenny say?"
  equals lenny.wingspan, __, "what is Lenny's wingspan?"
  
test "super", ->
  lenny = new Bat("Lenny", "1.5m")
  equals lenny.favouriteSaying(), __, "what is Lenny's favourite saying?"
