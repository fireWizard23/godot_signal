extends Node2D

onready var signal_test = preload('res://signal_test.tscn')

func _ready() -> void:
	print('test ready')

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		var h = signal_test.instance()
		add_child(h)
		h.connect('do', self, 'do')
		print(h.is_connected('do', self, 'do'))

func do():
	print('DONE CONNECTING!!')

