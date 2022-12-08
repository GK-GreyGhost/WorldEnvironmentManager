extends Node
tool

#name your environments here
#eg default, desert, forest, castle, cave
enum Environments {default, default2,default3,default4}

export(Environments) var environment:int = Environments.the_void setget set_environment

enum TransitionType{TRANS_LINEAR,TRANS_SINE,TRANS_QUINT,TRANS_QUART,TRANS_QUAD,TRANS_EXPO,TRANS_ELASTIC,TRANS_CUBIC,TRANS_CIRC,TRANS_BOUNCE,TRANS_BACK}
enum EaseType{EASE_IN,EASE_OUT,EASE_IN_OUT,EASE_OUT_IN}

export(TransitionType) var transition_type:int
export(EaseType) var ease_type:int
export var transition_length:float = 1.0

#preload your environments into here
#eg preload("res://world_environments/default.tres"),

export(Array, Environment) var environments = []

var we:Environment

func _ready():
	var world_environment:WorldEnvironment = WorldEnvironment.new()
	we = Environment.new()
	world_environment.environment = we
	add_child(world_environment)

func set_environment(n:int):
	environment = n
	tween_different(transition_length)

func tween_different(time:float = 1.0):

	var target = environments[environment]
	var tween:Tween = Tween.new()

	for data in we.get_property_list():
		var key = data.name
		var value = we.get(data.name)
		match data.type:
			TYPE_COLOR:
				var new_value = target.get(key)
				if value != new_value:
					tween.interpolate_property(we, key, value, new_value , time, transition_type,ease_type)
			TYPE_VECTOR2:
				var new_value = target.get(key).value
				if value != new_value:
					tween.interpolate_property(we, key, value, new_value, time, transition_type,ease_type)
			TYPE_VECTOR3:
				var new_value = target.get(key)
				if value != new_value:
					tween.interpolate_property(we, key, value, new_value, time, transition_type,ease_type)
			TYPE_BOOL:
				var new_value = target.get(key)
				if value != new_value:
					tween.interpolate_property(we, key, value, new_value, time, transition_type,ease_type)
			TYPE_REAL:
				var new_value = target.get(key)
				if value != new_value:
					tween.interpolate_property(we, key, value, new_value, time, transition_type,ease_type)
			TYPE_INT:
				var new_value = target.get(key)
				if value != new_value:
					tween.interpolate_property(we, key, value, new_value, time, transition_type,ease_type)
	add_child(tween)
	tween.start()