# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"

# auto complete
atom.commands.add 'atom-text-editor', 'my:move-up', ->
    editor = atom.workspace.getActiveTextEditor()
    atom.commands.dispatch(atom.views.getView(editor), 'autocomplete-plus:cancel')
    atom.commands.dispatch(atom.views.getView(editor), 'core:move-up')

atom.commands.add 'atom-text-editor', 'my:move-down', ->
    editor = atom.workspace.getActiveTextEditor()
    atom.commands.dispatch(atom.views.getView(editor), 'autocomplete-plus:cancel')
    atom.commands.dispatch(atom.views.getView(editor), 'core:move-down')
