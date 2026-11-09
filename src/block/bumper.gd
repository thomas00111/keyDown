extends AnimatedSprite2D

var used = false

func reset():
	used = false
	frame = 0

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.has_method("bump") && !used:
		body.bump()
		frame = 1
		used = true
