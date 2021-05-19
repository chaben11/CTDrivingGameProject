extends VehicleBody

const STEER_SPEED = 1.5
const STEER_LIMIT = 0.4

var steer_target = 0

export var engine_force_value = 400

func _physics_process(delta):
	var fwd_mps = transform.basis.xform_inv(linear_velocity).x

	steer_target = Input.get_action_strength("turn_left") - Input.get_action_strength("turn_right")
	steer_target *= STEER_LIMIT

	if Input.is_action_pressed("Acclerate"):
		# Increase engine force at low speeds to make the initial acceleration faster.
		var speed = linear_velocity.length()
		if speed < 5 and speed != 0:
			engine_force = clamp(engine_force_value * 5 / speed, 0, 100)
		else:
			engine_force = engine_force_value
	else:
		engine_force = 0

	if Input.is_action_pressed("Decellerate"):
		# Increase engine force at low speeds to make the initial acceleration faster.
		if fwd_mps >= -1:
			var speed = linear_velocity.length()
			if speed < 5 and speed != 0:
				engine_force = -clamp(engine_force_value * 5 / speed, 0, 100)
			else:
				engine_force = -engine_force_value
		else:
			brake = 1
	else:
		brake = 0.0

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
func _on_EnemyChecker_body_entered(body):
	if "Enemy" in body.name:
		print("check")
		get_tree().paused = true
		get_parent().get_parent().get_node("Failed/MainMenu").show()
#
#
#func _on_EnemyChecker_area_entered(area):
#	if "River" in area.name:
#		print("check1")
#		get_tree().paused = true
#		get_parent().get_parent().get_node("Failed/MainMenu").show()
