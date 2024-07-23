extends Node

var score = 0

@onready var score_label = $ScoreLabel
@onready var msg_label = $MsgLabel


func add_point():
	score += 1
	if score == 9:
		msg_label.text = "Great job!"
		score_label.text = "You collected all " + str(score) + " coins."
	elif score < 9 and score > 1:
		msg_label.text = "Nice work!"
		score_label.text = "You collected " + str(score) + " coins."
	elif score == 1:
		msg_label.text = "Lazy bastard!"
		score_label.text = "You collected just " + str(score) + " coin."
	else:
		msg_label.text = "Arghhh!"
		score_label.text = "Go and collect the coins!"
		
	print(score)
