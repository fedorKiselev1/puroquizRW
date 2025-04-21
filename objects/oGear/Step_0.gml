if (instance_position(mouse_x, mouse_y, self)) {
	if (mouse_check_button_pressed(mb_left)) {
		grabbed = true
	}
}
if (mouse_check_button_released(mb_left)) {
	grabbed = false
}
gangle = image_angle
if grabbed {
	image_angle = point_direction(x,y,mouse_x,mouse_y) - 45
}
width -= 2
width += angle_difference(image_angle, gangle) / 3

if width >= 1200 {
	audio_play_sound(sndCorrect, 1, 0)
	room_goto_next()
}
if width <= -100 {
	oWorld.KillHeart()
	width = 200
}