extends Control

onready var text = get_parent().get_node("Dialogue").dialogue_1

var dialogue_index = 0
var finished
var text_done =false
var active

func _ready():
	load_dialogue()
	
func _physics_process(delta):
	if Input.is_action_just_pressed("Quit"):
		get_tree().quit()
	if active:
		if Input.is_action_just_pressed("ui_accept"):
			if finished == true:
				load_dialogue()
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true
		
		#Charachter selectio
		if $OfficeWorker != null:
			if $TextBox/Label.text == "Officer":
				$OfficeWorker.visible = true
			else:
				$OfficeWorker.visible = false

		if $Roommate != null:
			if ($TextBox/Label.text == "Roommate" || $TextBox/Label.text == "Eli"):
				$Roommate.visible = true
			else:
				$Roommate.visible = false
func load_dialogue():
	if dialogue_index < text.size():
		active = true
		finished = false
		
		$TextBox.visible = true
		$TextBox/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
		$TextBox/Label.text = text[dialogue_index]["Name"]
		
		$TextBox/RichTextLabel.percent_visible = 0
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$TextBox/Tween.start()
	else:
		SceneSave.novel_active = false
		if SceneSave.phase == 0:
			get_tree().change_scene("res://City_Map.tscn")
		elif SceneSave.phase == 10:
			get_tree().quit()
		else:
			get_node("/root/City_Map").new_scene.queue_free()
			
		
	dialogue_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true
