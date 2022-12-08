extends Area

export(WorldEnvironmentManager.Environments) var world_environment:int = 0

func _on_WorldEnvironmentArea_body_entered(body):
	WorldEnvironmentManager.environment = world_environment

func _on_WorldEnvironmentArea_body_exited(body):
	WorldEnvironmentManager.environment = 0
