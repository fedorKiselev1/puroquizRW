if !instance_position(mouse_x, mouse_y, oPuro) {
	if (instance_position(mouse_x, mouse_y, self)) {
		if (mouse_check_button_pressed(mb_left)) {
			gun = !gun
			audio_play_sound(sndCock, 1, 0)
		}
	}
}
if gun {
	image_index = 1
	cursor_sprite = sGun
	window_set_cursor(cr_none)
} else {
	image_index = 0
	cursor_sprite = -1
	window_set_cursor(cr_default)
}
if !instance_position(mouse_x, mouse_y, oPuro) {
	if mouse_x > 160 && mouse_y > 64 && mouse_x < 288 && mouse_y < 128 {
		if (mouse_check_button_pressed(mb_left)) {
			if gun && !wait {
				oQuestionS.text = "6. Kill"
				audio_play_sound(sndShootfire, 1, 0)
				part_type_color1(global.Particle1, c_black)
				part_particles_create(global.P_System, mouse_x, mouse_y, global.Particle1, 50)
				part_type_color1(global.Particle1, c_red)
				wait = true
			}
		}
	}
}
if wait = true {
	t++
	if t = 120 {
		audio_play_sound(sndCorrect, 1, 0)
		room_goto_next()
	}
}