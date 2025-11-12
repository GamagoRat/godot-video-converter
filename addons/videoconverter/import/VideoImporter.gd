@tool
extends EditorImportPlugin

func _get_importer_name() -> String:
	return "godot.video.importer.videoconverter"

func _get_visible_name() -> String:
	return "Video Converter Importer"

func _get_recognized_extensions():
	return ["mp4", "avi", "mov", "mkv", "flv", "wmv"]

func _get_save_extension() -> String:
	return "ogv"

func _get_resource_type() -> String:
	return "VideoStreamTheora"

func _get_priority() -> float:
	return 1.0
	
func _get_import_options(path: String, preset_index: int) -> Array[Dictionary]:
	return []

func _import(source_file: String, save_path: String, options: Dictionary, platform_variants: Array, gen_files: Array) -> int:
	var ffmpeg_path := "ffmpeg"
	var src := ProjectSettings.globalize_path(source_file)
	var out_rel := save_path + "." + _get_save_extension()
	var out_abs := ProjectSettings.globalize_path(out_rel)
	var args := ["-y", "-i", src, "-q:v", "6", "-g:v", "64", out_abs]
	var output := []
	
	var exit_code := OS.execute(ffmpeg_path, args, output, true)
	if exit_code == 0:
		if FileAccess.file_exists(out_abs):
			gen_files.append(out_rel);
			return OK
		else:
			push_error("Video conversion failed: output file was not created.")
			return ERR_CANT_CREATE
	else:
		var output_text := PackedStringArray(output);
		push_error("Video conversion failed with exit code %d. Output:\n%s" % [exit_code, output_text])
		return ERR_CANT_CREATE