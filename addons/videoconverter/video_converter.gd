@tool
extends EditorPlugin

var video_converter

func _enable_plugin() -> void:
	# Add autoloads here.
	pass


func _disable_plugin() -> void:
	# Remove autoloads here.
	pass


func _enter_tree() -> void:
	video_converter = preload("import/VideoImporter.gd").new()
	add_import_plugin(video_converter)


func _exit_tree() -> void:
	# Clean-up of the plugin goes here.
	pass
