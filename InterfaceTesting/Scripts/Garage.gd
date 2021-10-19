extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var Sports = false
export var Suv = false
export var nissian = false
export var Hatchback = false
export var SixbySix = false
export var Limo = false
onready var exitobject = get_node("Exitarget")
onready var exitobject2 = get_node("Exitarget2") #This is an object that the Selected Car will point towards when it drives off the screen
# Called when the node enters the scene tree for the first time.
func _ready():
	Sports = true
	Suv = false
	nissian = false
	Hatchback = false
	SixbySix = false
	Limo = false
	garage.car_index = 1
	$SportsCar/SportsCar.entering = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
	if Input.is_action_just_pressed("ui_right"):
		next_car()
		$ChangingVehicles.start()	
		if Sports == true: 
			Sports = false
		elif Suv == true:
			Suv = false
		elif nissian == true:
			nissian = false
		elif Hatchback == true:
			Hatchback = false
		elif SixbySix == true:
			SixbySix = false
		elif Limo == true:
			Limo = false
		print(garage.car_index)
	elif Input.is_action_just_pressed("ui_left"):
		previous_car()
		$ChangingVehicles.start()	
		if Sports == true: 
			Sports = false
		elif Suv == true:
			Suv = false
		elif nissian == true:
			nissian = false
		elif Hatchback == true:
			Hatchback = false
		elif SixbySix == true:
			SixbySix = false
		elif Limo == true:
			Limo = false
		print(garage.car_index)
#Checks when the next arrow button is clicked. It will test which car is currently active and change it to play it's exit animation
func _on_next_pressed():
	next_car()
	$ChangingVehicles.start()	
	if Sports == true: 
		Sports = false
	elif Suv == true:
		Suv = false
	elif nissian == true:
		nissian = false
	elif Hatchback == true:
		Hatchback = false
	elif SixbySix == true:
		SixbySix = false
	elif Limo == true:
		Limo = false



func _on_Previous_pressed(): #Will repeat what the next_button function did but will go to the previous car instead
	previous_car()
	$ChangingVehicles.start()	
	if Sports == true: 
		Sports = false
	elif Suv == true:
		Suv = false
	elif nissian == true:
		nissian = false
	elif Hatchback == true:
		Hatchback = false
	elif SixbySix == true:
		SixbySix = false
	elif Limo == true:
		Limo = false

func _process(delta):
	if $Loadscene.disabled == true: #The button that selects the current car and loads the main menu will be disabled if the current car is locked
		$Loadscene/VEHICLELOCKED.show()
	else:
		$Loadscene/VEHICLELOCKED.hide()
	if Sports == true: #Checks what car is active
		if $SportsCar/SportsCar.entering == true:
			$SportsCar/SportsCar/AnimationPlayer.play("Enter") #Drives fowards onto the podium
		if $SportsCar/SportsCar.rotating == true:
			$SportsCar/SportsCar/AnimationPlayer.play("Rotate") #Rotates until next or previous button is selected
	elif Sports == false:
		if $SportsCar/SportsCar.rotating == true:
			$SportsCar/SportsCar/AnimationPlayer.play("Rotate") 
			#Wait until the car is facing fowards before driving off
#			if ($SportsCar/SportsCar.rotation_degrees.y >= 359 && $SportsCar/SportsCar.rotation_degrees.y < 360 ): 
			$SportsCar/SportsCar/AnimationPlayer.stop()
			$SportsCar/SportsCar.rotating = false
			$SportsCar/SportsCar.exiting = true
			$SportsCar/SportsCar/AnimationPlayer.play("Exit") #Moves the car off the podium
			$SportsCar/SportsCar.look_at(exitobject2.translation,Vector3.UP)
#			$SportsCar/SportsCar.turn_face(exitobject,delta)
			$SportsCar/SportsCar.exiting = false
			$SportsCar/SportsCar.rotating = false
			$SportsCar/SportsCar.entering = false
	if Suv == true:

		if $SUV/SUV.entering == true:
			$SUV/SUV/AnimationPlayer.play("Enter")
		if $SUV/SUV.rotating == true:
			$SUV/SUV/AnimationPlayer.play("Rotate")
	elif Suv == false:
			if $SUV/SUV.rotating == true:
				$SUV/SUV/AnimationPlayer.play("Rotate")
#				if ($SUV/SUV.rotation_degrees.y >= 359 && $SUV/SUV.rotation_degrees.y < 360 ):
				$SUV/SUV/AnimationPlayer.stop()
				$SUV/SUV.rotating = false
				$SUV/SUV.exiting = true
				$SUV/SUV/AnimationPlayer.play("Exit")
				$SUV/SUV.look_at(exitobject2.translation,Vector3.UP)
				$SUV/SUV.exiting = false
				$SUV/SUV.rotating = false
				$SUV/SUV.entering = false
	if nissian == true:
		if $Nissian/Nissian.entering == true:
			$Nissian/Nissian/AnimationPlayer.play("Enter")
		if $Nissian/Nissian.rotating == true:
			$Nissian/Nissian/AnimationPlayer.play("Rotate")
	elif nissian == false:
			if $Nissian/Nissian.rotating == true:
				$Nissian/Nissian/AnimationPlayer.play("Rotate")
#				if ($Nissian/Nissian.rotation_degrees.y >= 359 && $Nissian/Nissian.rotation_degrees.y < 360 ):
				$Nissian/Nissian/AnimationPlayer.stop()
				$Nissian/Nissian.rotating = false
				$Nissian/Nissian.exiting = true
				$Nissian/Nissian/AnimationPlayer.play("Exit")
				$Nissian/Nissian.look_at(exitobject2.translation,Vector3.UP)
				$Nissian/Nissian.exiting = false
				$Nissian/Nissian.rotating = false
				$Nissian/Nissian.entering = false
	if Hatchback == true:
		if $BMW/BMW.entering == true:
			$BMW/BMW/AnimationPlayer.play("Enter")
		if $BMW/BMW.rotating == true:
			$BMW/BMW/AnimationPlayer.play("Rotate")
	elif Hatchback == false:
			if $BMW/BMW.rotating == true:
				$BMW/BMW/AnimationPlayer.play("Rotate")
#				if ($BMW/BMW.rotation_degrees.y >= 359 && $BMW/BMW.rotation_degrees.y < 360 ):
				$BMW/BMW/AnimationPlayer.stop()
				$BMW/BMW.rotating = false
				$BMW/BMW.exiting = true
				$BMW/BMW/AnimationPlayer.play("Exit")
				$BMW/BMW.look_at(exitobject2.translation,Vector3.UP)
				$BMW/BMW.exiting = false
				$BMW/BMW.rotating = false
				$BMW/BMW.entering = false
					
	if SixbySix == true:
		if $SixbySix/SixbySix.entering == true:
			$SixbySix/SixbySix/AnimationPlayer.play("Enter")
		if $SixbySix/SixbySix.rotating == true:
			$SixbySix/SixbySix/AnimationPlayer.play("Rotate")
	elif SixbySix == false:
			if $SixbySix/SixbySix.rotating == true:
				$SixbySix/SixbySix/AnimationPlayer.play("Rotate")
#				if ($SixbySix/SixbySix.rotation_degrees.y >= 359 && $SixbySix/SixbySix.rotation_degrees.y < 360 ):
				$SixbySix/SixbySix/AnimationPlayer.stop()
				$SixbySix/SixbySix.rotating = false
				$SixbySix/SixbySix.exiting = true
				$SixbySix/SixbySix/AnimationPlayer.play("Exit")
				$SixbySix/SixbySix.look_at(exitobject2.translation,Vector3.UP)
				$SixbySix/SixbySix.exiting = false
				$SixbySix/SixbySix.rotating = false
				$SixbySix/SixbySix.entering = false
	if Limo == true: #Checks what car is active
		if $Limo/Limo.entering == true:
			$Limo/Limo/AnimationPlayer.play("Enter") #Drives fowards onto the podium
		if $Limo/Limo.rotating == true:
			$Limo/Limo/AnimationPlayer.play("Rotate") #Rotates until next or previous button is selected
	elif Limo == false:
		if $Limo/Limo.rotating == true:
			$Limo/Limo/AnimationPlayer.play("Rotate") 
			#Wait until the car is facing fowards before driving off
#			if ($Limo/Limo.rotation_degrees.y >= 359 && $Limo/Limo.rotation_degrees.y < 360 ): 
			$Limo/Limo/AnimationPlayer.stop()
			$Limo/Limo.rotating = false
			$Limo/Limo.exiting = true
			$Limo/Limo/AnimationPlayer.play("Exit") #Moves the car off the podium
			# tells the car to look at an object off camera before driving off the screen
			$Limo/Limo.look_at(exitobject2.translation,Vector3.UP) 
			$Limo/Limo.exiting = false
			$Limo/Limo.rotating = false
			$Limo/Limo.entering = false
			
func next_car(): #Checks if the index - (number of vehicles) is less than the max ammount before adding 1 or resets to 1 if index is at max
	if garage.car_index < 6:
		garage.car_index += 1
	elif garage.car_index == 6:
		garage.car_index = 1
	#the garage prefix is an autoload variable so the same values can easily be accessed in other scripts
func previous_car(): #Checks if the index - (number of vehicles) is less than the max ammount before adding 1 or resets to 1 if index is at max
	if garage.car_index > 1:
		garage.car_index -= 1
	elif garage.car_index == 1:
		garage.car_index = 6


func _on_ChangingVehicles_timeout(): #CHANGING NEXT
	print('timeout')
 #Starts the function to find the new index
	print(garage.car_index)
	if garage.car_index == 1: #Porshe/Taxi
		$Loadscene.disabled = false
		Sports = true
		$SportsCar/SportsCar.entering = true
		Suv = false
		nissian = false
		Hatchback = false
		SixbySix = false
		Limo = false
		$Labels/suvinfo.hide()
		$Labels/nissianinfo.hide()
		$Labels/bmwinfo.hide()
		$Labels/limoinfo.show()
		$Labels/"6x6info".hide()
		$Labels/limoinfo/Limo_label_tick.hide()
		$Selection/AnimationPlayer.play("index 1") #User interface animation. Will Play the animation depending on the current selection
	if garage.car_index == 2: #SUV
		Suv = true
		$SUV/SUV.entering = true
		Sports = false
		nissian = false
		Hatchback = false
		SixbySix = false
		Limo = false
		$Labels/suvinfo.show()
		$Labels/nissianinfo.hide()
		$Labels/bmwinfo.hide()
		$Labels/limoinfo.hide()
		$Labels/"6x6info".hide()
		$Selection/AnimationPlayer.play("index 2")
		if PlayerData.player.MineBonus == "locked":
			$Loadscene.disabled = true
			$Labels/suvinfo/Suv_label_untick.show()
			$Labels/suvinfo/Suv_label_tick.hide()
		elif PlayerData.player.MineBonus == "completed":
			$Loadscene.disabled = false
			$Labels/suvinfo/Suv_label_tick.show()
			$Labels/suvinfo/Suv_label_untick.hide()
	if garage.car_index == 3: #Nissian
		$Loadscene.disabled = false
		nissian = true #Sets Correct vehicle to the active vehicle and sets others to false
		Sports = false
		Suv = false
		Hatchback = false
		SixbySix = false
		Limo = false
		$Labels/suvinfo.hide()
		$Labels/nissianinfo.show()
		$Labels/bmwinfo.hide()
		$Labels/limoinfo.hide()
		$Labels/"6x6info".hide()
		$Nissian/Nissian.entering = true
		$Labels/nissianinfo/Nissian_label_tick.show()
		$Selection/AnimationPlayer.play("index 3")
	if garage.car_index == 4: #BMW Hatchback
		nissian = false
		Sports = false
		Suv = false
		Hatchback = true
		SixbySix = false
		Limo = false
		$Labels/suvinfo.hide()
		$Labels/nissianinfo.hide()
		$Labels/bmwinfo.show()
		$Labels/limoinfo.hide()
		$Labels/"6x6info".hide()
		$BMW/BMW.entering = true
		$Selection/AnimationPlayer.play("index 4")
		if PlayerData.player.CityBonus == "locked":
			$Loadscene.disabled = true
			$Labels/bmwinfo/bmw_label_tick.hide()
			$Labels/bmwinfo/bmw_label_untick.show()
		elif PlayerData.player.CityBonus == "completed":
			$Loadscene.disabled = false
			$Labels/bmwinfo/bmw_label_tick.show()
			$Labels/bmwinfo/bmw_label_untick.hide()
	if garage.car_index == 5: #6x6
		$Loadscene.disabled = false
		nissian = false
		Sports = false
		Suv = false
		Hatchback = false
		SixbySix = true
		Limo = false
		$Labels/suvinfo.hide()
		$Labels/nissianinfo.hide()
		$Labels/bmwinfo.hide()
		$Labels/limoinfo.hide()
		$Labels/"6x6info".show()
		$Labels/"6x6info/6x6_label_tick".show()
		$SixbySix/SixbySix.entering = true
		$Selection/AnimationPlayer.play("index 5")
	if garage.car_index == 6: #Limo
		$Loadscene.disabled = false
		nissian = false
		Sports = false
		Suv = false
		Hatchback = false
		SixbySix = false
		Limo = true
		$Labels/suvinfo.hide()
		$Labels/nissianinfo.hide()
		$Labels/bmwinfo.hide()
		$Labels/limoinfo.show()
		$Labels/"6x6info".hide()
		$Labels/limoinfo/Limo_label_tick.show()
		$Limo/Limo.entering = true
		$Selection/AnimationPlayer.play("index 6")
#		$Selection/AnimationPlayer.play("index 4")
	$ChangingVehicles.wait_time = 2 # a 5 second wait for the car to fully spin around before the next car will drive over
	$ChangingVehicles.stop()
