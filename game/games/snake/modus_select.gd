extends VBoxContainer

var modus_id = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	#name modus options [classic = 0, normal = 1,hard = 2]
	$Label.text = "%s" % [TranslationServer.translate("T_SNAKE_MODUS_SELECT_MODUS")]
	$PanelContainer/MarginContainer/VBoxContainer/CheckBoxClassic.text = (
		"%s"
		% [TranslationServer.translate("T_SNAKE_MODUS_CLASSIC")]
	)
	$PanelContainer2/MarginContainer/VBoxContainer/CheckBoxNormal.text = (
		"%s"
		% [TranslationServer.translate("T_SNAKE_MODUS_NORMAL")]
	)
	$PanelContainer3/MarginContainer/VBoxContainer/CheckBoxHard.text = (
		"%s"
		% [TranslationServer.translate("T_SNAKE_MODUS_HARD")]
	)
	#classic is default
	$PanelContainer/MarginContainer/VBoxContainer/CheckBoxClassic.pressed = true


func get_modus():
	pass


func _on_CheckBoxClassic_pressed():
	$PanelContainer/MarginContainer/VBoxContainer/CheckBoxClassic.pressed = true
	$PanelContainer2/MarginContainer/VBoxContainer/CheckBoxNormal.pressed = false
	$PanelContainer3/MarginContainer/VBoxContainer/CheckBoxHard.pressed = false
	modus_id = 0


func _on_CheckBoxNormal_pressed():
	$PanelContainer/MarginContainer/VBoxContainer/CheckBoxClassic.pressed = false
	$PanelContainer2/MarginContainer/VBoxContainer/CheckBoxNormal.pressed = true
	$PanelContainer3/MarginContainer/VBoxContainer/CheckBoxHard.pressed = false
	modus_id = 1


func _on_CheckBoxHard_pressed():
	$PanelContainer/MarginContainer/VBoxContainer/CheckBoxClassic.pressed = false
	$PanelContainer2/MarginContainer/VBoxContainer/CheckBoxNormal.pressed = false
	$PanelContainer3/MarginContainer/VBoxContainer/CheckBoxHard.pressed = true
	modus_id = 2
