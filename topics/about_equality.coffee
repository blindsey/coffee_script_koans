module "About Equality (topics/about_equality.js)"
test "numeric equality", ->
  equals 3 + __, 7, "hmmmm?"

test "string equality", ->
  equals "3" + __, "37", "concatenate the strings"

test "equality", ->
  ok 3 is __, "what is exactly equal to 3?"

test "inequality", ->
  ok 3 is_ "3", "what operator will satisfy this assertion"

test "string literals", ->
  equals "frankenstein", "__", "quote types are interchangable, but must match."
