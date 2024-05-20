extends Node2D

var meter := 100
var life := 4
var enemy = ["boyfriend", "cat", "mother", "momo", "stranger","continue1","continue2","continue2","continue2","continue2"]
var bf_is_look = false
var gf_is_hide = false


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#if meter != 0:
	
	
func _input(event):
	if event.is_action_pressed("my_action"):
		gf_is_hide = true
		print("gf is hide: " + str(gf_is_hide))
		print(randomEnemy())
	
	if event.is_action_released("my_action"):
		gf_is_hide = false
		print("gf is hide: " + str(gf_is_hide))
		
func randomEnemy():
	var random_enemy = randi_range(0, 9)
	return enemy[random_enemy]
	
