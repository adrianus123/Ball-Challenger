extends Control

func _on_Back_pressed():
	$ColorRect/CenterContainer/VBoxContainer/Back/AudioStreamPlayer.play()
	get_tree().change_scene("res://scene/main_menu/MainMenu.tscn")
