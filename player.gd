extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var velocity = Vector2.ZERO
	var speed = 100.0
	var gravity = 10
	
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
		
	velocity.y += gravity / delta

	position += velocity * delta
