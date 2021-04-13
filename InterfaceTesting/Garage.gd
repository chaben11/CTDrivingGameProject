extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var red = true
export var green = false
export var blue = false
# Called when the node enters the scene tree for the first time.
func _ready():
	red = true
	green = false
	blue = false
	garage.car_index = 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



func _on_next_pressed():
	$ChangingVehicles.start()
	if red == true:
		red = false

	elif green == true:
		green = false
	print(garage.car_index)


func _on_Previous_pressed():
	red = true
	$SportsCar/SportsCar.entering = true
	green = false


func _process(delta):
	if red == true:
		if $SportsCar/SportsCar.entering == true:
			$SportsCar/SportsCar/AnimationPlayer.play("Enter")
		if $SportsCar/SportsCar.rotating == true:
			$SportsCar/SportsCar/AnimationPlayer.play("Rotate")
	elif red == false:
		if $SportsCar/SportsCar.rotating == true:
			$SportsCar/SportsCar/AnimationPlayer.play("Rotate")
			if ($SportsCar/SportsCar.rotation_degrees.y >= 359 && $SportsCar/SportsCar.rotation_degrees.y < 360 ):
				$SportsCar/SportsCar/AnimationPlayer.stop()
				$SportsCar/SportsCar.rotating = false
				$SportsCar/SportsCar.exiting = true
				$SportsCar/SportsCar/AnimationPlayer.play("Exit")
				$SportsCar/SportsCar.exiting = false
				$SportsCar/SportsCar.rotating = false
				$SportsCar/SportsCar.entering = false
	if green == true:

		if $SUV/SUV.entering == true:
			$SUV/SUV/AnimationPlayer.play("Enter")
		if $SUV/SUV.rotating == true:
			$SUV/SUV/AnimationPlayer.play("Rotate")
	elif green == false:
			if $SUV/SUV.rotating == true:
				$SUV/SUV/AnimationPlayer.play("Rotate")
				if ($SUV/SUV.rotation_degrees.y >= 359 && $SUV/SUV.rotation_degrees.y < 360 ):
					$SUV/SUV/AnimationPlayer.stop()
					$SUV/SUV.rotating = false
					$SUV/SUV.exiting = true
					$SUV/SUV/AnimationPlayer.play("Exit")
					$SUV/SUV.exiting = false
					$SUV/SUV.rotating = false
					$SUV/SUV.entering = false

func next_car():
	if garage.car_index < 4:
		garage.car_index += 1
	elif garage.car_index == 4:
		garage.car_index = 1
	



func _on_ChangingVehicles_timeout(): #CHANGING NEXT
	next_car()
	print(garage.car_index)
	if garage.car_index == 1:
		red = true
		$SportsCar/SportsCar.entering = true
		green = false
		$Selection/AnimationPlayer.play("blue to red")
	if garage.car_index == 2:
		green = true
		$SUV/SUV.entering = true
		red = false
		$Selection/AnimationPlayer.play("Red to Green")
	if garage.car_index == 3:
		$Selection/AnimationPlayer.play("Green to yellow")
	if garage.car_index == 4:
		$Selection/AnimationPlayer.play("yellow to blue")
	$ChangingVehicles.wait_time = 5
	$ChangingVehicles.stop()
