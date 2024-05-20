extends Node2D

var rage = 0
var increment_speed = 0.05  # Start with a smaller increment speed for a slower increase
var max_rage = 100
var increasing = false
var value = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$house/Label.text = str(rage)
	

func _process(delta):
	if increasing:
		rage += increment_speed * delta * 10  # Scale by delta and a smaller factor for slower increase
		increment_speed += delta * 0.5  # Slower increase in increment speed
		value = rage
		$house/Label.text = str(int(rage))  # Update the label
	else: 
		$house/value.text = str(int(value))
		

func _input(event):
	if event.is_action_pressed("my_action"):
		increasing = true
		increment_speed = 0.05  # Reset the increment speed when starting

	if event.is_action_released("my_action"):
		rage = 0
		increment_speed = 0.05  # Reset the increment speed
		increasing = false
		$house/Label.text = str(rage)
