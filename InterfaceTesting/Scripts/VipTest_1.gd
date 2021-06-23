extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	if body.name == "Player": 
		if garage.car_index == 6: 
			$AnimationPlayer.play("OpenBoom") #Will only open if the index is the value.
			$StaticBody/CollisionShape.disabled = true
			print("Access Granted")


func _on_Area_body_exited(body):
	if body.name == "Player": 
		if garage.car_index == 6: 
			$AnimationPlayer.play_backwards("OpenBoom")
			$StaticBody/CollisionShape.disabled = false #Will only open if the index is the value.
