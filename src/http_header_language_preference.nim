# This is just an example to get you started. A typical hybrid package
# uses this file as the main entry point of the application.

import http_header_language_preference/submodule
import std/sets

when isMainModule:
  # var test_string = "Accept-Language: fr-CH, fr;q=0.9, en;q=0.8, de;q=0.7, *;q=0.5,pt-br,ch"
  var test_string = "Accept-Language: fr-CH, en;q=0.8,*;q=0.5,pt-br,ch,de-DE;q=0.4"

  var http_test_set = getAcceptedLanguages(test_string)
  echo "fr" in http_test_set
  echo "en" in http_test_set
  echo "pt" in http_test_set
  echo "ch" in http_test_set
  echo "es" in http_test_set
  echo "ja" in http_test_set
  echo "ko" in http_test_set

export submodule
