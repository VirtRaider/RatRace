extends Label

func _process(delta):
	self.text = str("score : " , GameState.score) 
