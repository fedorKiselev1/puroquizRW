draw_self()
	draw_set_font(fRain)
	if(image_index = 0) {
		draw_set_color(c_black)
	} else {
		draw_set_color(c_white)
	}

	draw_text_ext(x+10, y+10, text, 16, sprite_width-20)