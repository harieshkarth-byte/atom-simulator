extends Area2D

var mouseOn := false

func _on_mouse_entered() -> void:
	Global.protonCheck = false


func _on_mouse_exited() -> void:
	Global.protonCheck = true
