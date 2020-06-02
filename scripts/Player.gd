extends KinematicBody2D

const UP =Vector2(0,-1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -550
var motion = Vector2()#vector2 e pra agregar dois valores em uma variavel

func _physics_process(_delta):#movimentos
	
	motion.y += GRAVITY
	$Sprite.play("down")
	
	if Input.is_action_pressed("ui_right"):
		motion.x=SPEED
		$Sprite.play("walk")
	elif Input.is_action_pressed("ui_left"):
		motion.x=-SPEED
		$Sprite.play("walk")
	else:
		motion.x=0
		$Sprite.play("stop")
		
	if is_on_floor():#pulo
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
			$Sprite.play("jump")
		
	motion = move_and_slide(motion, UP)
