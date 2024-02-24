extends Camera2D
var camera_pos: float
# Called when the node enters the scene tree for the first time.
func _ready():
	camera_pos=get_screen_center_position().x


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_parent().modify_camera_x_position(get_limit(SIDE_LEFT))
	if(camera_pos<get_screen_center_position().x && get_target_position().x>(get_limit(SIDE_LEFT)+640)):
		set_limit(SIDE_LEFT,((get_target_position().x)-640))
		update_camera_pos(get_screen_center_position().x)

func update_camera_pos(float):
	camera_pos=get_screen_center_position().x
