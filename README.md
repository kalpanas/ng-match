# ng-match
> Distributed via

[![Version     ](https://img.shields.io/gem/v/ng-match.svg)                                         ](https://rubygems.org/gems/ng-match)
[![Bower version](https://badge.fury.io/bo/ng-match.svg)                                            ](https://badge.fury.io/bo/ng-match)

> Match the ng-model with another value in $scope

[![Travis CI   ](https://travis-ci.org/tomchentw/ng-match.svg?branch=master)                        ](https://travis-ci.org/tomchentw/ng-match)
[![Quality     ](https://img.shields.io/codeclimate/github/tomchentw/ng-match.svg)                  ](https://codeclimate.com/github/tomchentw/ng-match)
[![Coverage    ](https://img.shields.io/coveralls/tomchentw/ng-match.svg)                           ](https://coveralls.io/r/tomchentw/ng-match)
[![Dependencies](https://gemnasium.com/tomchentw/ng-match.svg)                                      ](https://gemnasium.com/tomchentw/ng-match)


## Project philosophy

### Develop in LiveScript
[LiveScript](http://livescript.net/) is a compile-to-js language, which provides us more robust way to write JavaScript.  
It also has great readibility and lots of syntax sugar just like you're writting python/ruby.


## Installation

### Just use it

* Download and include [`ng-match.js`](https://github.com/tomchentw/ng-match/blob/master/ng-match.js) OR [`ng-match.min.js`](https://github.com/tomchentw/ng-match/blob/master/ng-match.min.js).  

Then include them through script tag in your HTML.

### **Rails** projects (Only support 3.1+)

Add this line to your application's Gemfile:

```ruby
gem 'ng-match'
```

And then execute:

    $ bundle

Then add these lines to the top of your `app/assets/javascripts/application.js` file:

```javascript
//= require angular
//= require ng-match
```

And include in your `angular` module definition:

```javascript
var module = angular.module('my-awesome-project', ['ng-match']).
```


## Usage


## Contributing

[![devDependency Status](https://david-dm.org/tomchentw/ng-match/dev-status.svg?theme=shields.io)](https://david-dm.org/tomchentw/ng-match#info=devDependencies)

1. Fork it ( https://github.com/tomchentw/ng-match/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request