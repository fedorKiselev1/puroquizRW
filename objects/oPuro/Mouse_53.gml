if (!instance_position(mouse_x, mouse_y, oPbuttonparent)) {
	if Mute != noone {
		instance_destroy(Mute)
		instance_destroy(Ask)
		Mute = noone
		Ask = noone
	}
}