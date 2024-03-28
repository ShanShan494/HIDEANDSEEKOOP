extends CharacterBody2D
@export var MAX_SPEED  = 300 
@export var ACCELERATION = 1500
@export var FRICTION = 1280
@onready var axis = Vector2.ZERO

func _physics_process(delta):
	move(delta)
	
func get_input_axis():
	
