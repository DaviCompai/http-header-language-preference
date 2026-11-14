a library that receives a [http accept-language](https://developer.mozilla.org/pt-BR/docs/Web/HTTP/Reference/Headers/Accept-Language) string and "deals with it"

 
first task: understand what "dealing with it" means.

i was thinking about making a function (in this case, a proc) that returns a hash set with what languages (without locality, only the language part, such as 'en' in 'en-us'). This is already enough for my use case, but i also want to deal with localities and quality values.

for localities, i can just do a hash set too, not much difference.

for quality values, i can do a ordered array (biggest quality comes first).

TODO:

- [x] make proc that returns language hash set
- [ ] make proc that returns language+locality hash set
- [ ] make proc that returns ordered sequence of quality values for languages
