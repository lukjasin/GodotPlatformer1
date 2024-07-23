extends Control


@onready var pause_menu = $"."

func resume():
	get_tree().paused = false
	pause_menu.hide()

func pause():
	get_tree().paused = true
	pause_menu.show()

func testEsc():
	if Input.is_action_just_pressed("escape") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("escape") and get_tree().paused == true:
		resume()

func _on_resume_pressed():
	resume() # Replace with function body.

func _on_quit_pressed():
	get_tree().quit() # Replace with function body.

func _ready():
	pause_menu.hide()

func _process(delta):
	testEsc()
