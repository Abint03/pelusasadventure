extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_game_pressed():
	print("Starting game")
	get_tree().change_scene_to_file("res://scenes/Levels/Level1.tscn")


func _on_exit_game_pressed():
	get_tree().quit() # Replace with function body.
