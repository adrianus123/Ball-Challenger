extends Spatial

onready var start_button = $CanvasLayer/Fader/Control/VBoxContainer/CenterContainer/VBoxContainer/StartButton
onready var help_button = $CanvasLayer/Fader/Control/VBoxContainer/CenterContainer/VBoxContainer/HelpButton
onready var about_button = $CanvasLayer/Fader/Control/VBoxContainer/CenterContainer/VBoxContainer/AboutButton
onready var quit_button = $CanvasLayer/Fader/Control/VBoxContainer/CenterContainer/VBoxContainer/QuitButton
onready var fader = $CanvasLayer/Fader

export (PackedScene) var game_scene = null

func _ready():
	start_button.connect("pressed", self, "on_start_pressed")
	help_button.connect("pressed", self, "on_help_pressed")
	about_button.connect("pressed", self, "on_about_pressed")
	quit_button.connect("pressed", self, "on_quit_pressed")
	fader.connect("fade_finished", self, "on_fade_finished")

func on_start_pressed():
	$CanvasLayer/Fader/Control/VBoxContainer/CenterContainer/VBoxContainer/StartButton/AudioStreamPlayer.play()
	fader.fade_in()

func on_help_pressed():
	$CanvasLayer/Fader/Control/VBoxContainer/CenterContainer/VBoxContainer/StartButton/AudioStreamPlayer.play()
	pass

func on_about_pressed():
	$CanvasLayer/Fader/Control/VBoxContainer/CenterContainer/VBoxContainer/StartButton/AudioStreamPlayer.play()
	pass

func on_quit_pressed():
	$CanvasLayer/Fader/Control/VBoxContainer/CenterContainer/VBoxContainer/StartButton/AudioStreamPlayer.play()
	get_tree().quit()

func on_fade_finished():
	get_tree().change_scene_to(game_scene)
