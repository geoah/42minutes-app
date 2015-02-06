'use strict'

describe 'Service: Settings', ->

  # load the service's module
  beforeEach module 'appApp'

  # instantiate service
  Settings = {}
  beforeEach inject (_Settings_) ->
    Settings = _Settings_

  it 'should do something', ->
    expect(!!Settings).toBe true
