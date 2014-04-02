EmberApp.MovieController = Ember.ObjectController.extend
  actions:
    # Note: Only put button actions in "actions" section. Don't put computed
    # properties or Observers in this section, but on the same indent level
    # as 'actions'.
    edit: ->
      @set('isEditing', true)
      @set('isSuccess', false)
    save: ->
    	@get('content').save()
    	@set('isEditing', false)
    	@set('isSuccess', true)
    cancel: ->
    	@set('isEditing', false)
    	@set('isSuccess', false)
