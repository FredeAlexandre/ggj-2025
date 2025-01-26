extends Node2D

@export var bubble_scene: PackedScene  # Charge la scène du cercle depuis l'inspecteur

func _input(event: InputEvent):
	if (event is InputEventScreenTouch or event is InputEventMouseButton) and event.pressed:
		# Instancier le cercle
		var bubble = bubble_scene.instantiate()
		add_child(bubble)
		
		# Positionner le cercle à l'endroit du toucher
		bubble.position = event.position
		
