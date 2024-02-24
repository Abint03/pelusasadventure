extends CharacterBody2D
var speed := 390
var direction:= 0.0 #no uso vector 2 porque solamente el player se mueve de izquierda a derecha
const gravity := 30
var jump := 650
var cameraLimitPosition: float
@onready var _animated_sprite = $AnimatedSprite2D

func _ready():
	cameraLimitPosition=0.0

func _physics_process(delta):
	direction = Input.get_axis("ui_left","ui_right")
	velocity.x = direction * speed
	
	if direction == 0:
		_animated_sprite.play("idle")
	if direction > 0:
		_animated_sprite.play("runRight")
	if direction < 0:
		_animated_sprite.play("runLeft")
	if is_on_floor() and Input.is_action_pressed("ui_up"):
		velocity.y -= jump
	if !is_on_floor():
		velocity.y += gravity
	
	if position.x<=(cameraLimitPosition+45):
		speed=0
		position.x+=1
	else:
		speed=390
	move_and_slide()

func _on_hurt_box_area_entered(area):
	if area.is_in_group("killsPlayer"):
		position.x=256
		position.y=364

func modify_camera_x_position(pos):
	cameraLimitPosition=pos;
