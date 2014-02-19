/*global angular:false*/
angular.module 'ng-match' <[]>
.value 'ngMatchConfig' do
  
  delay: 200

.directive 'ngMatch' <[ 
       $timeout  ngMatchConfig
]> ++ ($timeout, ngMatchConfig) ->

  !function postLinkFn ($scope, $element, $attrs, ngModelCtrl)
    promise = void
    $scope.$watch ->
      $scope.$eval($attrs.ngModel) is $scope.$eval($attrs.ngMatch)
    , !(isMatch) ->
      $timeout.cancel promise if promise
      promise := $timeout !->
        ngModelCtrl.$setValidity 'match' isMatch
        promise := void
      , $attrs.ngMatchDelay or ngMatchConfig.delay

  link: postLinkFn
  restrict: 'A'
  require: 'ngModel'