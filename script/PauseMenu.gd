extends Control

var is_paused = false setget set_is_paused

func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_ResumeButton_pressed():
	$CenterContainer/VBoxContainer/ResumeButton/AudioStreamPlayer.play()
	self.is_paused = false

func _on_MainMenuButton_pressed():
	$CenterContainer/VBoxContainer/ResumeButton/AudioStreamPlayer.play()
	get_tree().change_scene("res://scene/main_menu/MainMenu.tscn")

func _on_Button_pressed():
	$CenterContainer/VBoxContainer/ResumeButton/AudioStreamPlayer.play()
	get_tree().quit()
