extends Control

func _on_Back_Button_pressed():
	$"ColorRect/Back Button/AudioStreamPlayer".play()
	get_tree().change_scene("res://scene/main_menu/MainMenu.tscn")
