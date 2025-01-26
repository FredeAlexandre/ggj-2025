extends RigidBody2D

@export var max_speed = 2000.0

func _ready() -> void:
	print("Soap is ready !")
	
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if state.linear_velocity.length() > max_speed:
		state.linear_velocity = state.linear_velocity.normalized() * max_speed

func _on_body_entered(body: Node) -> void:
	print("On body enter")
	pass # Replace with function body.
