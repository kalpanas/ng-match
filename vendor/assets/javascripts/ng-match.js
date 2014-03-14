/*! ng-match - v 0.0.3 - Fri Mar 14 2014 13:40:57 GMT+0800 (CST)
 * https://github.com/tomchentw/ng-match
 * Copyright (c) 2014 [tomchentw](https://github.com/tomchentw);
 * Licensed [MIT](http://tomchentw.mit-license.org)
 */
/*global angular:false*/
(function(){
  angular.module('ng-match', []).value('ngMatchConfig', {
    delay: 200
  }).controller('NgMatchCtrl', (function(){
    var bind, prototype = constructor.prototype;
    bind = angular.bind;
    prototype.matchChanged = function(isMatch){
      this.isMatch = isMatch;
      if (this.promise) {
        this.$timeout.cancel(this.promise);
      }
      this.promise = this.$timeout(this.setValidity, this.$attrs.ngMatchDelay || this.ngMatchConfig.delay);
    };
    prototype.setValidity = function(){
      this.ngModelCtrl.$setValidity('match', this.isMatch);
      this.promise = void 8;
    };
    constructor.$inject = ['$timeout', 'ngMatchConfig', '$scope', '$attrs'];
    function constructor($timeout, ngMatchConfig, $scope, $attrs){
      this.$timeout = $timeout;
      this.ngMatchConfig = ngMatchConfig;
      this.$scope = $scope;
      this.$attrs = $attrs;
      this.promise = this.isMatch = void 8;
      this.setValidity = bind(this, this.setValidity);
      $scope.$watch(function(){
        return $scope.$eval($attrs.ngModel) === $scope.$eval($attrs.ngMatch);
      }, angular.bind(this, this.matchChanged));
    }
    return constructor;
  }())).directive('ngMatch', function(){
    return {
      restrict: 'A',
      require: ['ngModel', 'ngMatch'],
      controller: 'NgMatchCtrl',
      link: function(){
        var ref$, ngModelCtrl, ngMatchCtrl;
        ref$ = arguments[3], ngModelCtrl = ref$[0], ngMatchCtrl = ref$[1];
        ngMatchCtrl.ngModelCtrl = ngModelCtrl;
      }
    };
  });
}).call(this);
