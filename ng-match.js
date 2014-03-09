/*! ng-match - v 0.0.2 - Sun Mar 09 2014 16:26:38 GMT+0800 (CST)
 * https://github.com/tomchentw/ng-match
 * Copyright (c) 2014 [tomchentw](https://github.com/tomchentw);
 * Licensed [MIT](http://tomchentw.mit-license.org)
 */
/*global angular:false*/
(function(){
  angular.module('ng-match', []).value('ngMatchConfig', {
    delay: 200
  }).directive('ngMatch', ['$timeout', 'ngMatchConfig'].concat(function($timeout, ngMatchConfig){
    function postLinkFn($scope, $element, $attrs, ngModelCtrl){
      var promise;
      promise = void 8;
      $scope.$watch(function(){
        return $scope.$eval($attrs.ngModel) === $scope.$eval($attrs.ngMatch);
      }, function(isMatch){
        if (promise) {
          $timeout.cancel(promise);
        }
        promise = $timeout(function(){
          ngModelCtrl.$setValidity('match', isMatch);
          promise = void 8;
        }, $attrs.ngMatchDelay || ngMatchConfig.delay);
      });
    }
    return {
      link: postLinkFn,
      restrict: 'A',
      require: 'ngModel'
    };
  }));
}).call(this);
