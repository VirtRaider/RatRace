extends Node2D

@export var speed = 1600

func _process(delta):
	position.y -= speed * delta


func _on_area_entered(area):
	self.queue_free()
