tool
extends EditorPlugin


func _enter_tree():
	add_autoload_singleton("WorldEnvironmentManager", "res://addons/WorldEnvironmentManager/WorldEnvironmentManager.gd")

func _exit_tree():
	remove_autoload_singleton("WorldEnvironmentManager")
