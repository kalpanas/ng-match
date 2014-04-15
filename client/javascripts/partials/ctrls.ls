angular.module 'application'
.filter 'formJson' ->
  const internalKeys = do
    '$parsers': true
    '$formatters': true
    '$viewChangeListeners': true

  function copyWithoutNgModelInternal
    Object.keys it .filter -> not internalKeys[it]
    .reduce (copy, key) ->
      const value = it[key]
      copy[key] = if angular.isObject value
        copyWithoutNgModelInternal value
      else
        value
      copy
    , {}

  ->
    copyWithoutNgModelInternal it
    |> JSON.stringify _, null, 4
    
.controller 'MatchCtrl' class

  @$inject = <[
     $scope ]>
  !(@$scope) ->