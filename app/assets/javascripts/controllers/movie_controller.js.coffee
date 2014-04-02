EmberApp.MovieController = Ember.ObjectController.extend
  actions:
    # Note: Only put button actions in "actions" section. Don't put computed
    # properties or Observers in this section, but on the same indent level
    # as 'actions'.
    edit: ->
      @set('isEditing', true)
    save: ->
    	@get('content').save()
    	@set('isEditing', false)
    cancel: ->
    	@set('isEditing', false)
