extends Node2D

var new_scene = null

# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug(self.get_path())
	if SceneSave.phase==0:
		get_node("Charachter")._setLocation(get_node("HOME"))
	


func _process(delta):
	if SceneSave.novel_active == false:
		if (Input.is_action_pressed("Zoom_Out")):
			get_node("FullViewCamera").current = true
		else:
			get_node("Charachter/PlayerCamera").current = true
		if(Input.is_action_pressed("Quit")):
			get_tree().quit()
			
		if(Input.is_action_just_pressed("Enter_Building")):
			get_node("Charachter").location.enter()

func nextDiscussion():
	SceneSave.novel_active = true
	SceneSave.phase = SceneSave.phase+1
	if SceneSave.phase ==1:
		new_scene = load("res://Novel/OfficeDiscussion.tscn").instance()
		get_node("PLAZA1").open = true
	elif SceneSave.phase ==2:
		new_scene = load("res://Novel/OfficeDiscussion.tscn").instance()
		get_node("PLAZA3").open = true
	elif SceneSave.phase ==3:
		pass
	elif SceneSave.phase ==4:
		pass
	self.add_child(new_scene)	
	new_scene.get_node("Camera2D").current = true
