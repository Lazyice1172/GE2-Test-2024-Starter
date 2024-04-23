extends Node3D

@export var gizmo:PackedScene
@onready var gizmo_body: CharacterBody3D = $Gizmo

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	#Every 3 second create new gizmo
	var new_gizmo = gizmo.instantiate()
	var random = randf_range(-5.0, 5.0)
	add_child(new_gizmo)
	
	new_gizmo.global_position.x = gizmo_body.global_position.x + random
	new_gizmo.global_position.y = gizmo_body.global_position.y + random
	new_gizmo.global_position.z = gizmo_body.global_position.z + random
	
	pass # Replace with function body.
