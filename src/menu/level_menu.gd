extends Control


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://src/levels/test_level_1.tscn")

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://src/levels/test_level_3.tscn")
