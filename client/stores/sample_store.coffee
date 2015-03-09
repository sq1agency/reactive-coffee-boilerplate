createStore = require 'dispatchr/utils/createStore'

SampleStore = createStore {
  initialize: ->
    @sample = 'Sample'

  storeName: 'SampleStore'

  handlers:
    'SAMPLE_ACTION': (payload) ->
      @.emitChange()
}

module.exports = SampleStore
