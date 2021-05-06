extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = Vector3()
onready var sportscar = preload("res://Cars/SportsCar_Model.tres")
onready var  Suv = preload("res://Models/SUV_Model.tres")
# Called when the node enters the scene tree for the first time.
func _ready():
	if garage.car_index == 1:
		$Car.mesh = sportscar
	elif garage.car_index == 2:
		$Car.mesh = Suv
	

# Called when the node enters the scene tree for the first time.



func _physics_process(delta):
	if Input.is_action_just_pressed("Acclerate"):
		speed.x = 2
	if Input.is_action_just_released("Acclerate"):
		speed.x = 0
	if Input.is_action_just_released("Decellerate"):
		speed.x = 0
	elif Input.is_action_just_pressed("Decellerate"):
		speed.x = -1
	move_and_slide(speed)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_KinematicBody2_body_entered(body):
	pass


func _on_KinematicBody3_body_entered(body):
	pass

func _on_KinematicBody4_body_entered(body):
	print("test")


func _on_KinematicBody5_body_entered(body):
	print("test")


func _on_Honk_1_body_entered(body):
	$AudioStreamPlayer3D.play()
	print("MOVE")


func _on_Honk_2_body_entered(body):
	$AudioStreamPlayer3D.play()



