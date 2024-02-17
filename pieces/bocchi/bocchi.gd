extends CharacterBody2D

var gravity = 100

func _ready():
	up_direction = Vector2(0, -1)

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	
	move_and_slide()
