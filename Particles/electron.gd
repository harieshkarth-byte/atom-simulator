extends Area2D

var electronCheck := true
var frame := 0

func _physics_process(delta: float) -> void:
	if Global.neutronCheck and Global.protonCheck and electronCheck:
		position = Vector2(cos(delta*frame)*174, sin(delta*frame) *174)
		frame += 1

func _on_mouse_entered() -> void:
	electronCheck = false

func _on_mouse_exited() -> void:
	electronCheck = true
