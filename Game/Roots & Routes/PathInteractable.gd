extends Area2D


func _on_PathInteractable_input_event(viewport, event, shape_idx):
		if (event is InputEventMouseButton && event.pressed):
			print("clicked")
