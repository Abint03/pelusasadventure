extends Node2D

var levelScene := ["res://scenes/Levels/Level1.tscn","res://scenes/Levels/Level2.tscn"]
var maxLevel := levelScene.size()
var actualLevel := 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_area_entered(area):
	if actualLevel != maxLevel:
		print(actualLevel)
		actualLevel +=1
		get_tree().change_scene_to_file(levelScene[actualLevel])
	else:
		get_tree().quit()
