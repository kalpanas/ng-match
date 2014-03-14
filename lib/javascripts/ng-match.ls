/*global angular:false*/
angular.module 'ng-match' <[]>
.value 'ngMatchConfig' do
  
  delay: 200

.controller 'NgMatchCtrl' class

  const {bind} = angular

  matchChanged: !(@isMatch) ->
    @$timeout.cancel @promise if @promise

    @promise = @$timeout @setValidity
    , @$attrs.ngMatchDelay || @ngMatchConfig.delay

  setValidity: !->
    @ngModelCtrl.$setValidity 'match' @isMatch
    @promise = void

  @$inject = <[
     $timeout   ngMatchConfig   $scope   $attrs ]>
  !(@$timeout, @ngMatchConfig, @$scope, @$attrs) ->
    @promise = @isMatch = void
    @setValidity = bind @, @setValidity

    $scope.$watch ->
      $scope.$eval($attrs.ngModel) is $scope.$eval($attrs.ngMatch)
    , angular.bind @, @matchChanged

.directive 'ngMatch' ->

  restrict: 'A'
  require: <[ ngModel ngMatch ]>
  controller: 'NgMatchCtrl'
  link: !(/* $scope, $element, $attrs, $ctrls */) ->
    const [ngModelCtrl, ngMatchCtrl] = &3
    ngMatchCtrl.ngModelCtrl = ngModelCtrl
