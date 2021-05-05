extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var sportscar = preload("res://SportsCar_Model.tres")
onready var  Suv = preload("res://SUV_Model.tres")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	if garage.car_index == 1:
		$Model.mesh = sportscar
	elif garage.car_index == 2:
		$Model.mesh = Suv
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
