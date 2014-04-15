const EMAIL = 'developer@tomchentw.com'

(...) <-! describe 'ng-match module'

$rootScope = $timeout = void

beforeEach module 'ng-match'
beforeEach inject !(_$rootScope_, _$timeout_) ->
  $rootScope  := _$rootScope_
  $timeout := _$timeout_

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
    $timeout.verifyNoPendingTasks!
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

  it 'should have default delay' !(...) ->
    $rootScope.email = EMAIL
    $rootScope.$digest!
    $timeout.flush 100

    expect $rootScope.signUp.$valid .toBe true
    $timeout.flush 150
    expect $rootScope.signUp.$valid .toBe false


