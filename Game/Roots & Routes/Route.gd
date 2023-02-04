extends Node2D

signal SelectRoute(route, backwards)

export(NodePath) onready var startPoint = get_node(startPoint) as Node
export(NodePath) onready var endPoint = get_node(endPoint) as Node

var map_char

func _ready():
	map_char = get_node("/root/City_Map/Charachter")

func _on_Endpoint_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		map_char.getPath(self, true)


func _on_StartPoint_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		map_char.getPath(self, false)
