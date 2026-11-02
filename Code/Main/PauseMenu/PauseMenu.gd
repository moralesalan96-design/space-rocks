extends PanelContainer

@onready var play_button: Button = $VBox/PlayButton
@onready var quit_button: Button = $VBox/QuitButton

func _ready() -> void:
	play_button.pressed.connect(on_play_pressed)
	quit_button.pressed.connect(on_quit_pressed)
	show()
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		# FIXME: Not pausing, testing with quit().
		#get_tree().paused = true
		get_tree().quit()
		
func on_play_pressed():
	print("play")
	
func on_quit_pressed():
	print("quit")
