extends Node2D
# https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/gdscript_basics.html

const speed = 500

func _ready():
	print_debug("Ding!")


func _process(delta):
	if Input.is_action_pressed("move_up"):
		self.position.y -= speed * delta
	elif Input.is_action_pressed("move_down"):
		self.position.y += speed * delta
	
	if Input.is_action_pressed("move_left"):
		self.position.x -= speed * delta
	elif Input.is_action_pressed("move_right"):
		self.position.x += speed * delta


