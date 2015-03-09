module.exports = (context, payload, done) ->
  context.dispatch 'SAMPLE_ACTION', {
    state: "This is a state change."
  }
