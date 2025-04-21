draw_self()
if activated == false {
	if image_index = 0 {
		draw_sprite_ext(sprite, 0, x+10, y+10, 1, 1, 0, c_black, 1)
	}
	if image_index = 1 {
		draw_sprite_ext(sprite, 0, x+10, y+10, 1, 1, 0, c_white, 1)
	}

} else {
	if image_index = 0 {
		draw_sprite_ext(sprite, 1, x+10, y+10, 1, 1, 0, c_black, 1)
	}
	if image_index = 1 {
		draw_sprite_ext(sprite, 1, x+10, y+10, 1, 1, 0, c_white, 1)
	}
}
