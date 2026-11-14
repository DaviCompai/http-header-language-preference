# This is just an example to get you started. Users of your hybrid library will
# import this file by writing ``import http_header_language_preferencepkg/submodule``. Feel free to rename or
# remove this file altogether. You may create additional modules alongside
# this file as required.

import strutils
import std/sets
import std/unicode

proc getacceptedlanguages*(http_header_accepted_languages:string): Hashset[string]=
  var accepted_languages_set = inithashset[string]()
  var accepted_languages = http_header_accepted_languages.toLower()


  #deals with the "accept-languages:" if it is present
  let colon = accepted_languages.find(':')
  if colon > 0:
    accepted_languages = accepted_languages[colon + 1 .. ^1]

  for raw_language in accepted_languages.split(','):
    var language = raw_language.strip().toLower()
    if "-" in language:
      accepted_languages_set.incl(language.split('-',maxsplit=1)[0])
    elif ";" in language:
      accepted_languages_set.incl(language.split(';',maxsplit=1)[0])
    else:
      accepted_languages_set.incl(language)
  return accepted_languages_set
