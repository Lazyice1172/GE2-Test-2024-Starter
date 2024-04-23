extends Node3D


var length:= 5.0
var tail:= 2.0
var swing:= 1.0

@export var fishBody:PackedScene

@onready var fish_body_manager: Node3D = $FishBodyManager
@onready var gizmo: RigidBody3D = $".."


func _process(delta: float) -> void:
	
	if length > 0:
		var new_fishBody = fishBody.instantiate()
		add_child(new_fishBody)
		new_fishBody.global_position.x = gizmo.global_position.x
		new_fishBody.global_position.y = gizmo.global_position.y
		new_fishBody.global_position.z = gizmo.global_position.z + length
		
		
		
		length -= 1.0
	pass

func _physics_process(delta: float) -> void:
	pass
