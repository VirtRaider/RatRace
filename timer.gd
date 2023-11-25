extends Timer

var random = RandomNumberGenerator.new()
var timer = Timer.new()

func _ready():

	random.randomize()
	timer.timeout.connect(_on_timer_timeout)


func _on_timer_timeout():
	print("Spawn")
	timer.set_wait_time(random.randf_range(0.5,1.5))
	print(random)
