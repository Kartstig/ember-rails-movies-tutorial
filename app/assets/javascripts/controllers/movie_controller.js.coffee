EmberApp.MovieController = Ember.ObjectController.extend
  actions:
    # Note: Only put button actions in "actions" section. Don't put computed
    # properties or Observers in this section, but on the same indent level
    # as 'actions'.
    edit: ->
      @set('isEditing', true)
      @set('isFail', false)
      @set('isSuccess', false)
    save: ->
    	@get('content').save().then(@didSave.bind(@), @didReject.bind(@))
    	
    cancel: ->
    	@get('content').rollback()
    	@set('isFail', true)
    	@set('isEditing', false)
    	@set('isSuccess', false)

 	didSave: ->
 		@set('isSuccess', true)
 		@set('isEditing', false)

 	didReject: ->
 		@set('isSuccess', false)
	 	@set('isFail', true)