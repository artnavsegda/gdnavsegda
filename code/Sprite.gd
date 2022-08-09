extends Sprite
var speed = 400
var angular_speed = PI

func _init():
	print("Hello, world!")

func _process(delta):
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta

func _on_Button_pressed():
	set_process(not is_processing())
