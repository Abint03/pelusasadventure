extends CharacterBody2D
var speed := 300
var direction:= 0.0 #no uso vector 2 porque solamente el player se mueve de izquierda a derecha
const gravity := 30
var jump := 500
@onready var anim = $AnimationPlayer
func _physics_process(delta):
	direction = Input.get_axis("ui_left","ui_right")
	velocity.x = direction * speed
	
	if direction == 0:
		anim.play("Idle")
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y -= jump
	if !is_on_floor():
		velocity.y += gravity
	move_and_slide()
