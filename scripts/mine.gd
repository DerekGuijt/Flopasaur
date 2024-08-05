extends Node2D

@export var is_mine: bool
@export var is_known: bool
@export var neighbors: int
# @export var _flag_state: int

var tile: AnimatedSprite2D
var icon: AnimatedSprite2D

func _ready():
	tile = get_node("%tile")
	icon = get_node("%icon")
	set_sprites()

func _update(_delta):
	set_sprites()

# func flag_state():
# 	return Enums.icon_state[_flag_state]


func set_sprites():
	# var _icon_frame = flag_state()
	var tile_frame: int = 0
	if is_known:
		tile_frame += 1
		if is_mine:
			tile_frame += 1
	tile.frame = tile_frame
