extends Node2D

signal SelectRoute(route, backwards)

export(NodePath) onready var startPoint = get_node(startPoint) as Node
export(NodePath) onready var endPoint = get_node(endPoint) as Node

var map_char
var toDraw = 1

func _ready():
	map_char = get_node("/root/City_Map/Charachter")
	map_char.connect("shoutLocation", self, "_check_interactables")

func _on_Endpoint_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		map_char.getPath(self, true)
		if (toDraw>0):
			toDraw =0


func _on_StartPoint_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		map_char.getPath(self, false)
		if (toDraw>0):
			toDraw =0

func _check_interactables(playerLocation):
	if (playerLocation == startPoint):
		get_node("StartPoint").visible = true
		if (toDraw ==0):
			_darw_route()
	else :
		get_node("StartPoint").visible = false
	if (playerLocation == endPoint):
		get_node("Endpoint").visible = true
		if (toDraw ==0):
			_darw_route()
	else :
		get_node("Endpoint").visible = false


#Drawing a line along the path
func _darw_route():
	var l := Line2D.new()   
	print_debug("TEST")
	l.default_color = Color(0,1,0,1)
	l.width = 5  
	var path = get_node("Path2D")
	for point in path.curve.get_baked_points():  
		l.add_point(point + path.position)
	add_child(l)
	toDraw = -1
