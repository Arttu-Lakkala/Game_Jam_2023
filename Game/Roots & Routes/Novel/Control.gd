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
			if text_done:
				print_debug("AAAAAAAA")
				get_tree().change_scene("res://City_Map.tscn")
			else:
				if finished == true:
					load_dialogue()
				else:
					$TextBox/Tween.stop_all()
					$TextBox/RichTextLabel.percent_visible = 1
					finished = true
		
		if $TextBox/Label.text == "Speaker 1":
			$Sus1.visible = true
			$Sus2.visible = false
			
		if $TextBox/Label.text == "Speaker 2":
			$Sus1.visible = false
			$Sus2.visible = true

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
		get_tree().change_scene("res://Main_Scene.tscn")
		
	dialogue_index += 1


func _on_Tween_tween_completed(object, key):
	finished = true