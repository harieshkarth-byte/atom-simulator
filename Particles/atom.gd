extends Node2D

func hideAll():
	$Descriptions/electronD.hide()
	$Descriptions/neutronD.hide()
	$Descriptions/protonD.hide()

func _physics_process(_delta: float) -> void:
	if !Global.neutronCheck and Global.protonCheck:
		$Descriptions/neutronD.show()
	elif Global.neutronCheck and !Global.protonCheck:
		$Descriptions/protonD.show()
	elif !Global.neutronCheck and !Global.protonCheck:
		$Descriptions/neutronD.show()
	else:
		$Descriptions/neutronD.hide()
		$Descriptions/protonD.hide()

func _on_proton_mouse_entered() -> void:
	hideAll()


func _on_electron_mouse_entered() -> void:
	$Descriptions/electronD.show()


func _on_neutron_mouse_entered() -> void:
	hideAll()


func _on_proton_mouse_exited() -> void:
	$Descriptions/protonD.hide()


func _on_electron_mouse_exited() -> void:
	$Descriptions/electronD.hide()

func _on_neutron_mouse_exited() -> void:
	$Descriptions/neutronD.hide()
