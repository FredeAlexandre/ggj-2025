extends Node2D

@export var bubble_scene: PackedScene  # Charge la scène du cercle depuis l'inspecteur

var camera

func _ready() -> void:
	camera = get_node("Soap/Camera2D")

func _input(event: InputEvent):
	if (event is InputEventScreenTouch or event is InputEventMouseButton) and event.pressed:
		
		var world_position = camera.get_global_mouse_position()

		# Instancier le cercle
		var bubble = bubble_scene.instantiate()
		add_child(bubble)
		
		# Positionner le cercle à l'endroit de la position du monde calculée
		bubble.position = world_position
