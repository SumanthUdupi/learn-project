extends CharacterBody2D

# Set the player's movement speed in pixels per second.
@export var speed = 300

func _physics_process(delta):
	# Get input from the arrow keys or WASD.
	# This creates a direction vector, e.g., (1, 0) for right.
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")

	# Set the velocity based on the direction and speed.
	velocity = direction * speed

	# This is a built-in function that moves the character
	# and handles collisions with walls, etc.
	move_and_slide()
