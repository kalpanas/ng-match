const EMAIL = 'developer@tomchentw.com'

$rootScope = $timeout = void

beforeEach module 'ng-match'
beforeEach inject !(_$rootScope_, _$timeout_) ->
  $rootScope  := _$rootScope_
  $timeout := _$timeout_

(...) <-! describe 'module ng-match'
it 'should be defined' !(...) ->
  expect angular .toBeDefined!

describe 'ngMatchConfig' !(...) ->
  const originalConfig = {}
  beforeEach inject !(ngMatchConfig) ->
    angular.extend originalConfig, ngMatchConfig
    ngMatchConfig.delay = 1500

  it 'should allow override' !(...) ->
    inject !(ngMatchConfig) ->
      expect ngMatchConfig.delay .toEqual 1500

  afterEach inject !(ngMatchConfig) ->
    angular.extend ngMatchConfig, originalConfig

describe 'ngMatch' !(...) ->
  element = void
  beforeEach inject !($compile) ->
    element := $compile("""
      <form name="signUp">
        <input type="text" name="email" ng-model="email">
        <input type="text" name="emailConf" ng-model="emailConf" ng-match="email">
      </form>
    """)($rootScope)

  afterEach !(...) ->
    element.remove!

  it 'should be valid with empty data' !(...) ->
    expect $rootScope.signUp.$valid .toBe true

  it 'should mismatch when email entered' !(...) ->
    $rootScope.email = EMAIL
    $rootScope.$digest!
    $timeout.flush!

    expect $rootScope.signUp.$valid .toBe false
    expect $rootScope.signUp.emailConf.$error.match .toBe true

  it 'should mismatch when email confirmation entered' !(...) ->
    $rootScope.emailConf = EMAIL
    $rootScope.$digest!
    $timeout.flush!

    expect $rootScope.signUp.$valid .toBe false
    expect $rootScope.signUp.emailConf.$error.match .toBe true

  it 'should match when email and confirmation entered' !(...) ->
    $rootScope.email = $rootScope.emailConf = EMAIL
    $rootScope.$digest!
    $timeout.flush!

    expect $rootScope.signUp.$valid .toBe true

