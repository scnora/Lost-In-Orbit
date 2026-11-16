
extends CharacterBody3D

# How fast the player moves
@export var speed = 6.0

func _physics_process(delta):
	# Get movement from WASD or arrow keys
	var input = Input.get_vector(
		"ui_left",
		"ui_right",
		"ui_up",
        "ui_down"
	)

	# Convert input into 3D movement
	var direction = Vector3(input.x, 0, input.y)

	# Move the player
	velocity.x = direction.x * speed
	velocity.z = direction.z * speed

	# Apply movement and collisions
	move_and_slide()
