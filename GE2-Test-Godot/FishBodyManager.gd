extends Node3D


var basic_length:= 5.0
var basic_tail:= 2.0
var swing:= 1.0

var random_size := randf_range(0.5, 2.0)
var length:= basic_length * random_size
var tail:= basic_tail * random_size

@export var gizmoBody:PackedScene
@export var gizmotail:PackedScene

@onready var gizmo_body_manager: Node3D = $FishBodyManager
@onready var gizmo: CharacterBody3D = $".."


func _process(delta: float) -> void:
	#Try to create fish body
	
	if length > 0:
		var new_gizmoBody = gizmoBody.instantiate()
		add_child(new_gizmoBody)
		new_gizmoBody.global_position.x = gizmo.global_position.x
		new_gizmoBody.global_position.y = gizmo.global_position.y
		new_gizmoBody.global_position.z = gizmo.global_position.z + length
		
		
		
		length -= 1.0
		
	if tail > 0:
		var new_gizmotail = gizmotail.instantiate()
		add_child(new_gizmotail)
		new_gizmotail.global_position.x = gizmo.global_position.x
		new_gizmotail.global_position.y = gizmo.global_position.y
		new_gizmotail.global_position.z = gizmo.global_position.z + length + tail
		
		tail -= 1.0
	pass
	pass

func _physics_process(delta: float) -> void:
	pass
