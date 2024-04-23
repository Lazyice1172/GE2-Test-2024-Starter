extends CharacterBody3D

@export var speed:= 3.0
@export var fish_body: PackedScene
var random_position_x := randf_range(-2.0, 2.0)
var random_position_z := randf_range(1.0, 2.0)



var target_position := Vector3.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#Fish move to target
	target_position = Vector3(
		global_position.x - random_position_x * speed * delta,
		0,
		global_position.z - random_position_z * speed * delta,
	)

	var move = target_position
	position = move

	
	pass


func _on_timer_timeout() -> void:
	pass # Replace with function body.
