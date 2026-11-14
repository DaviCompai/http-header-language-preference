# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest


import http_header_language_preference/submodule

import std/sets
# test "correct welcome":
#   check getWelcomeMessage() == "Hello, World!"
#


var test_string = "Accept-Language: fr-CH, en;q=0.8,*;q=0.5,pt-br,ch,de-DE;q=0.4"

var http_test_set = getAcceptedLanguages(test_string)

test "hashset detects language by itself":
  check "ch" in http_test_set
test "hashset detects language-location format":
  check "fr" in http_test_set
  check "pt" in http_test_set
test "hashset detects language;quality format":
  check "en" in http_test_set
test "hashset detects language-location;quality format":
  check "en" in http_test_set
test "hashset doesn't detect not present language":
  check "ja" notin http_test_set
  check "ko" notin http_test_set
