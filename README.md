# ng-match
> Distributed via

[![Gem Version](https://badge.fury.io/rb/ng-match.png)](http://badge.fury.io/rb/ng-match) [![Bower version](https://badge.fury.io/bo/ng-match.png)](http://badge.fury.io/bo/ng-match)

> Match the ng-model with another value in $scope

[![Build Status](https://secure.travis-ci.org/tomchentw/ng-match.png)](http://travis-ci.org/tomchentw/ng-match) [![Coverage Status](https://coveralls.io/repos/tomchentw/ng-match/badge.png)](https://coveralls.io/r/tomchentw/ng-match) [![Code Climate](https://codeclimate.com/github/tomchentw/ng-match.png)](https://codeclimate.com/github/tomchentw/ng-match)  [![Dependency Status](https://gemnasium.com/tomchentw/ng-match.png)](https://gemnasium.com/tomchentw/ng-match)


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
    
    /* 'ng-match' module.
     */    
    var module = angular.module('my-awesome-project', ['ng-match']).


## Usage


## Contributing

[![devDependency Status](https://david-dm.org/tomchentw/ng-match/dev-status.png?branch=master)](https://david-dm.org/tomchentw/ng-match#info=devDependencies) [![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/tomchentw/ng-match/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

1. Fork it ( http://github.com/tomchentw/ng-match/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request