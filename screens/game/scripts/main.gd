extends Node2D

@export var circle_scene: PackedScene  # Charge la scène du cercle depuis l'inspecteur

func _input(event: InputEvent):
	if (event is InputEventScreenTouch or event is InputEventMouseButton) and event.pressed:
		# Instancier le cercle
		var circle_instance = circle_scene.instantiate()
		add_child(circle_instance)
		
		# Positionner le cercle à l'endroit du toucher
		circle_instance.position = event.position
		
		await get_tree().create_timer(2.0).timeout
		
		circle_instance.queue_free()
		
