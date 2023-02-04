extends Node2D

signal SelectRoute(route, backwards)

export(NodePath) onready var startPoint = get_node(startPoint) as Node
export(NodePath) onready var endPoint = get_node(endPoint) as Node


func _on_Endpoint_input_event(viewport, event, shape_idx):
	pass # Replace with function body.


func _on_StartPoint_input_event(viewport, event, shape_idx):
	pass # Replace with function body.
