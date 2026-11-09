extends Node2D

func get_respawn() -> Vector2:
	return $respawn.global_position

func _process(delta: float) -> void:
	$Camera2D.position.x = $Player.position.x#lerp($Camera2D.position.x, , 0.9)

func respawn():
	for child in get_children():
		if child.has_method("reset"):
			child.reset()

func _physics_process(delta: float) -> void:
	$Back.position.x -= 0.5
	if $Back.position.x < -600:
		$Back.position.x = 2029.0
