extends KinematicBody2D


# Declare member variables here. Examples:
var moving = false
var backwards = false
var routePoints
var routeIndex = 0
var target
var route
var velocity = Vector2.ZERO
export(NodePath) onready var location = get_node(location) as Node

export var move_speed : int

onready var sprite = $AnimatedSprite
 
func getPath(selected, thisBackwards):
	location = null
	route = selected
	backwards = thisBackwards
	routePoints = route.get_node("Path2D").curve.get_baked_points()
	if backwards:
		routeIndex = routePoints.size()-1
	else:
		routeIndex = 0
	
# Called when the node enters the scene tree for the first time.


#ADD GOING "BACKWARDS"
func _process(delta):
	if(routePoints):
		#If we are going backwards
		if backwards:
			target = routePoints[routeIndex]
			if position.distance_to(target) < 1:
				routeIndex = routeIndex - 1
				if routeIndex == 0:
					location = route.endPoint
					routePoints = null
					route = null
		else :
			target = routePoints[routeIndex]
			if position.distance_to(target) < 1:
				routeIndex = routeIndex + 1
				if routeIndex == routePoints.size():
					location = route.endPoint
					routePoints = null
					route = null
		velocity = (target - position).normalized() * move_speed
	else:
		velocity = Vector2.ZERO
	velocity = move_and_slide(velocity)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

