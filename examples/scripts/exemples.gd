extends Node

@onready var label: Label = $Label
@onready var stream: VideoStreamPlayer = $VideoStreamPlayer

@export var video: Array[VideoStream] = []
var index = -1

func _ready() -> void:
	play_next_video()
	
func play_next_video():
	index +=1
	if video.is_empty():
		return
		
	if index > video.size() - 1:
		return
	
	var video: VideoStream = video.get(index)
	stream.stream = video
	stream.play()
	label.text = video.file
	

func _on_video_stream_player_finished() -> void:
	play_next_video()
	
