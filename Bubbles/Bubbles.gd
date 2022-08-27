extends Node

export(PackedScene) var Bubble_scene
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var timer = get_node("Spawner")
	timer.connect("timeout", self, "_on_timeout")
	pass # Replace with function body.

func _on_timeout():
	var bubble = Bubble_scene.instance()
	
	var bubble_location = get_node("Path2D/PathFollow2D")
	bubble_location.offset = 1 + randi() % int(get_viewport().size.x - 10)
	
	bubble.position = bubble_location.position
	bubble.rotation = bubble_location.rotation + PI
	
	add_child(bubble)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
