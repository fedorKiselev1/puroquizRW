if die instance_destroy()

if occlude >= sprite_width + x {
	grabbable = true
}
if grabbable {
	if (instance_position(mouse_x, mouse_y, self)) {
		if (mouse_check_button_pressed(mb_left)) {
			grabbed = true
		}
	}
}
if (mouse_check_button_released(mb_left)) {
	grabbed = false
}
if !grabbed {
	x = oPuro.x+100
	y = oPuro.floorpos-200
} else {
	x = clamp(mouse_x - sprite_width / 2, 0, room_width - sprite_width)
	y = clamp(mouse_y - sprite_height / 2, 0, room_height - sprite_height)
}