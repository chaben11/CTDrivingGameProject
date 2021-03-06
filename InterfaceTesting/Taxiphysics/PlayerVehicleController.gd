extends VehicleBody

const STEER_SPEED = 1.5
const STEER_LIMIT = 0.4
onready var gamefailed = false
var steer_target = 0
export var engine_force_value = 250
signal Gameover
var supergranny = false 

func _ready():
	if garage.car_index == 7:
#		if supergranny == false:
		engine_force_value = 10
#		elif supergranny == true:
#			engine_force_value = 1000
func _physics_process(delta): #Character controller fowards (Up,W, and Left click) and backwards 
	var fwd_mps = transform.basis.xform_inv(linear_velocity).x

#	steer_target = Input.get_action_strength("turn_left") - Input.get_action_strength("turn_right")
#	steer_target *= STEER_LIMIT
	if Input.is_action_just_pressed("space"):
	
		if supergranny == false:
			supergranny = true
			engine_force_value = 99999999999
			print(supergranny)
			print(engine_force_value)
		elif supergranny == true:
			supergranny = false
			engine_force_value = 10
			print(supergranny)
			print(engine_force_value)
	if Input.is_action_pressed("Acclerate"): 
		# Increase engine force at low speeds to make the initial acceleration faster.
		var speed = linear_velocity.length()
		if speed < 5 and speed != 0:  #max and min value for speed
			engine_force = clamp(engine_force_value * 5 / speed, 0, 100)
		else:
			if engine_force < engine_force_value:
				engine_force = engine_force + 10
	else:
		engine_force = 0

	if Input.is_action_pressed("Decellerate"): 
		# Increase engine force at low speeds to make the initial acceleration faster.
		if fwd_mps >= -1:
			var speed = linear_velocity.length()
			if speed < 5 and speed != 0:
				engine_force = -clamp(engine_force_value * 5 / speed, 0, 100) #Negative value means backwards
			else:
				engine_force = -engine_force_value

		else:
			brake = 1
			#Animation Dark Red for brake lights
	else:
		brake = 0.0
		#Animation Normal red for brake lights

	steering = move_toward(steering, steer_target, STEER_SPEED * delta)


#extends VehicleBody
#
#
## Declare member variables here. Examples:
## var a = 2
## var b = "text"
#var pressed = false
#var turn
## Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.
#
#func _input(_event):
#	print(engine_force)
#	if Input.is_action_pressed("Acclerate"):
#		if engine_force < 300:
#			engine_force += 180
#			pressed = true
#		elif engine_force > 300:
#			engine_force = 300
#
#	elif Input.is_action_pressed("Decellerate"):
#		if engine_force > -300:
#			engine_force -= 150
#			pressed = true
#		elif engine_force < -300:
#			engine_force = -300
#	elif Input.is_action_just_released("Acclerate"):
#		pressed = false
#	elif Input.is_action_just_released("Decellerate"):
#		pressed = false
##	elif Input.is_action_just_pressed("turn left"):
##		steering = 10
##		turn = true
##	elif Input.is_action_just_pressed("turn left"):
##		steering = -10
##		turn = true
##	elif Input.is_action_just_released("turn left"):
##		turn = false
##	elif Input.is_action_just_released("turn right"):
##		turn = false
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
##func _process(delta):
##	pass
##func _process(_delta):
##
#	if pressed == false:
#
#		if engine_force > 0:
#			engine_force -=15
#		elif engine_force < 0:
#			engine_force +=15
##	if turn == false:
##		steering = 0
##func _integrate_forces(_state): 
##	rotation_degrees.y = 90
##	rotation_degrees.z = 0
##	translation.z = -3
func _on_EnemyChecker_body_entered(body): #if the enemy collides with the player
	if "Enemy" in body.name:
		print("check")
		$PlayerCrashSound.play()
		get_tree().paused = true
		get_parent().get_parent().get_node("Paused/Failed").show()		
	else:
		print(body.name)
#func _on_EnemyChecker_area_entered(area):
#	if "River" in area.name:
#		print("check1")
#		get_tree().paused = true
#		get_parent().get_parent().get_node("Failed/MainMenu").show()
