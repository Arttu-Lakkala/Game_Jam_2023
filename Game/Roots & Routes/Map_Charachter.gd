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
 
func getPath(selected):
	location = null
	route = selected
	routePoints = route.curve.get_baked_points()
	
# Called when the node enters the scene tree for the first time.
func _ready():
	#VERY TEMP
	getPath(get_node("/root/City_Map/Location2/Route1"))

#ADD GOING "BACKWARDS"
func _process(delta):
	if(routePoints):
		#If we are going backwards
		if backwards:
			pass
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
