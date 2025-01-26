extends RigidBody2D
func _ready() -> void:
	print("Soap is ready !")
	
func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	print(state.get_constant_force())

func _on_body_entered(body: Node) -> void:
	print("On body enter")
	pass # Replace with function body.
