extends KinematicBody2D

signal shoutLocation(location)
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
 

#ADD GOING "BACKWARDS"
func _process(delta):
	#Movement
	if(routePoints):
		#If we are going "backwards" trough a path
		if backwards:
			target = routePoints[routeIndex]
			if position.distance_to(target) < 5:
				routeIndex = routeIndex - 1
				if routeIndex == 0:
					_setLocation(route.startPoint)
					routePoints = null
		else :
			target = routePoints[routeIndex]
			if position.distance_to(target) < 10:
				routeIndex = routeIndex + 1
				if routeIndex == routePoints.size():
					_setLocation(route.endPoint)
					routePoints = null
		velocity = (target - position).normalized() * move_speed
	else:
		velocity = Vector2.ZERO
	velocity = move_and_slide(velocity)
	
	#END of movement

#function for setting location	
func _setLocation(currentLocation):
	location = currentLocation
	velocity = Vector2.ZERO
	route = null
	emit_signal("shoutLocation", currentLocation)

#Function for getting a path
func getPath(selected, thisBackwards):
	location = null
	route = selected
	backwards = thisBackwards
	routePoints = route.get_node("Path2D").curve.get_baked_points()
	if backwards:
		routeIndex = routePoints.size()-1
	else:
		routeIndex = 0
	emit_signal("shoutLocation", null)
	


