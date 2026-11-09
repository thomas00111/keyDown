extends ColorRect

func set_text(text : String):
	if text == "q":
		$AnimatedSprite2D.frame = 2
	elif text == "d":
		$AnimatedSprite2D.frame = 1
	elif text == "_":
		$AnimatedSprite2D.frame = 3
	elif text == "x":
		$AnimatedSprite2D.frame = 6

func _on_timer_timeout() -> void:
	queue_free()
