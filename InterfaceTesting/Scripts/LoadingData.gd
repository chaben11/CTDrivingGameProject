extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var gameover = false
onready var taxi = preload("res://Cars/PlayerCars/PlayerScene/Taxi.tscn")
onready var sixbysix = preload("res://Cars/PlayerCars/PlayerScene/SixbySix.tscn")
onready var bmw = preload("res://Cars/PlayerCars/PlayerScene/Bmw.tscn")
onready var suv = preload("res://Cars/PlayerCars/PlayerScene/suv.tscn")
onready var limo = preload("res://Cars/PlayerCars/PlayerScene/Limo.tscn")
onready var nissan = preload("res://Cars/PlayerCars/PlayerScene/Nissian.tscn")
onready var granny = preload("res://Cars/PlayerCars/PlayerScene/granny.tscn")
# Called when the node enters the scene tree for the first time.
func _ready(): #Level will load the selected vehicle into the scene
	if garage.car_index == 5:
		add_child(sixbysix.instance())
	elif garage.car_index == 4:
		add_child(bmw.instance())
	elif garage.car_index == 2:
		add_child(suv.instance())
	elif garage.car_index == 6:
		add_child(limo.instance())
	elif garage.car_index == 3:
		add_child(nissan.instance())
	elif garage.car_index == 7:
		add_child(granny.instance())
	else:
		add_child(taxi.instance())
	
func _process(delta):
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if Input.is_action_just_pressed("pause"):
		if gameover == false:
			if get_tree().paused == false: #the button will freeze the scene except this menu which is part of an exception group
				get_tree().paused = true
				$Paused/Pause.show()
			elif get_tree().paused == true:
				get_tree().paused = false
				$Paused/Pause.hide()





func _on_Player_Gameover():
	print("12345Working")
