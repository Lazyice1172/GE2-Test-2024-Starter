extends RigidBody3D

@export var speed:= 3.0
@export var fish_body: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	

	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var move = Vector3(0, 0, global_position.z - speed * delta)
	position = move
	
	pass
