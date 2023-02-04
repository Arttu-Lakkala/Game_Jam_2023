extends Node2D

signal SelectRoute(route, backwards)

export(NodePath) onready var startPoint = get_node(startPoint) as Node
export(NodePath) onready var endPoint = get_node(endPoint) as Node

var map_char

func _ready():
	map_char = get_node("/root/City_Map/Charachter")
	map_char.connect("shoutLocation", self, "_check_interactables")

func _on_Endpoint_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		map_char.getPath(self, true)


func _on_StartPoint_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		map_char.getPath(self, false)

func _check_interactables(playerLocation):
	print_debug(playerLocation)
	if (playerLocation == startPoint):
		get_node("StartPoint").visible = true
	else :
		get_node("StartPoint").visible = false
	if (playerLocation == endPoint):
		get_node("Endpoint").visible = true
	else :
		get_node("Endpoint").visible = false
		
	
