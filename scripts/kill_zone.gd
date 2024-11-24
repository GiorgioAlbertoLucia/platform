extends Area2D

@onready var reset_timer: Timer = $ResetTimer

func _on_body_entered(_body: Node2D) -> void:
	print('You died!')
	reset_timer.start()

func _on_reset_timer_timeout() -> void:
	get_tree().reload_current_scene()
