extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var taxi = preload("res://Cars/PlayerCars/PlayerScene/Taxi.tscn")
onready var sixbysix = preload("res://Cars/PlayerCars/PlayerScene/SixbySix.tscn")
onready var bmw = preload("res://Cars/PlayerCars/PlayerScene/Bmw.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	if garage.car_index == 5:
		add_child(sixbysix.instance())
	elif garage.car_index == 4:
		add_child(bmw.instance())
	else:
		add_child(taxi.instance())

func _process(delta):
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

