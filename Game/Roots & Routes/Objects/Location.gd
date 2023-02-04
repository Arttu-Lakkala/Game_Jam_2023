extends Node2D

var open = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	if (self.name == "HOME"):
		open = true
# Called when the node enters the scene tree for the first time.
func enter():
	if(open):
		open = false
		get_tree().get_root().get_node("City_Map").nextDiscussion()
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if open:
		get_node("Area2D/CollisionShape2D/Particles2D").emitting = true
	else:
		get_node("Area2D/CollisionShape2D/Particles2D").emitting = false
