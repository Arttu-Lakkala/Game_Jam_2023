extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if (Input.is_action_pressed("Zoom_Out")):
		get_node("FullViewCamera").current = true
	else:
		get_node("Charachter/PlayerCamera").current = true
	if(Input.is_action_pressed("Quit")):
		get_tree().quit()
