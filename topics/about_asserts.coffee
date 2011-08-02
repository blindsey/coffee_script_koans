module "About Asserts (topics/about_asserts.js)"
test "ok", ->
  ok false, "what will satisfy the ok assertion?"

test "not_ok", ->
  not_ok __, "what is a false value?"

test "equals", ->
  equals 1 + 1, __, "what will satisfy the equals assertion?"
