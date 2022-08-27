extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#signal 
var speed = 0
# Called when the node enters the scene tree for the first time.
func setSpeed(new_speed):
	speed = new_speed
	
func _ready():
	setSpeed(350)
	randomize()
	var timer = get_node("Lifespan")
	timer.connect("timeout", self, "_on_timeout")
	timer.wait_time = rand_range(0.3, 1)
	print(timer.wait_time)
	pass # Replace with function body.

func _process(delta):
	position += Vector2.UP * delta * speed
	
func _on_timeout():
	#visible = false
	queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
