extends CharacterBody2D
var speed = 40

var player_chase =  false 
var blob_player = null 


func _physics_process(_delta):
	if player_chase: 
		position += (blob_player.position - position)/speed 
		
		$AnimatedSprite2D.play("walk")
	else:
		$AnimatedSprite2D.play("idle")

func _on_detection_area_body_entered(body):
	blob_player = body 
	player_chase = true


func _on_detection_area_body_exited(body):
	blob_player = null 
	player_chase = false 
