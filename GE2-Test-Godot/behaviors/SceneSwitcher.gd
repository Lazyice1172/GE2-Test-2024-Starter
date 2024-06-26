extends Node

@onready var camera_3d: Camera3D = $"../Player/Camera3D"
@onready var fish_camera_3d: Camera3D = $"../Gizmo/fishCamera3D"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


@export var scenes: Array[String] = []

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventKey and event.pressed and ! event.echo:
		if event.keycode == KEY_Q:
			get_tree().quit()
		var i = event.keycode - KEY_0
		if event.keycode >= KEY_0 and i >= 0 and i < scenes.size():			
			get_tree().change_scene_to_file(scenes[i])
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("switchcamer"):
		camera_3d.visible = false
		fish_camera_3d.visible = true
		
		
