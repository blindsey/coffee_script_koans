module "About Strings (topics/about_strings.js)"
test "delimiters", ->
  singleQuotedString = 'apple'
  doubleQuotedString = "apple"
  equals singleQuotedString == doubleQuotedString, __, "are the two strings equal?"

test "multiline strings", ->
  sentence = "is
 this
 a
 valid
 string?"
  equals sentence == "is this a valid string?", __, "is this a valid string?"

test "concatenation", ->
  fruit = "apple"
  dish = "pie"
  equals fruit + " " + dish, __, "what is the value of fruit + \" \" + dish?"

test "character Type", ->
  characterType = typeof ("Amory".charAt(1))
  equals characterType, __, "Javascript has no character type"

test "escape character", ->
  stringWithAnEscapedCharacter = "\u0041pple"
  equals stringWithAnEscapedCharacter, __, "what  is the value of stringWithAnEscapedCharacter?"

test "string.length", ->
  fruit = "apple"
  equals fruit.length, __, "what is the value of fruit.length?"

test "slice", ->
  fruit = "apple pie"
  equals fruit.slice(0, 5), __, "what is the value of fruit.slice(0,5)?"
