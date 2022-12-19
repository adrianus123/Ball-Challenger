extends Spatial

onready var health = 100
onready var death_zone = $DeathZone

func _process(delta):
	if health <= 0:
		get_tree().change_scene("res://scene/Lose_Scene.tscn")

