(...) <-! describe 'module ng-match'
it 'should be defined' !(...) ->
  expect ng-match .toBeDefined!

it 'should return true value' !(...) ->
  const value = ng-match {}
  expect value .toEqual true

it 'should return false value' !(...) ->
  const value = ng-match ''
  expect value .toEqual false