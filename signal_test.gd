extends Node2D
signal do

func _ready() -> void:
	print('signal_ready!')
	emit_signal('do')
	pass
