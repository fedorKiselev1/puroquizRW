draw_self()
if image_index = 0 {
	draw_sprite_ext(sprite, 0, x+10, y+10, 1, 1, 0, c_black, 1)
}
if image_index = 1 {
	draw_sprite_ext(sprite, 0, x+10, y+10, 1, 1, 0, c_white, 1)
}
if wrong {
	draw_set_font(fRodonto)
	draw_set_color(c_red)
	draw_text(oTextinput.x, oTextinput.y-96,"WRONG")
	draw_set_color(c_black)
	draw_set_font(fRain)
}