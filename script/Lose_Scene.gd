extends Control

onready var fader = $CanvasLayer/Fader

func _ready():
	fader.fade_out()

func _on_Button_pressed():
	get_tree().change_scene("res://scene/main_menu/MainMenu.tscn")
