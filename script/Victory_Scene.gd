extends Control

onready var fader = $CanvasLayer/Fader

func _ready():
	fader.fade_out()
