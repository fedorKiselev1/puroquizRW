draw_self()
if(Asked) {
	draw_sprite_ext(sDialogue, 0, x+20, floorpos-40, Askscale, Askscale, Askrotate, c_white, 1)
}
if(txtdraw) {
	draw_set_font(fRain)
	draw_set_color(c_black)
	if room == HL19 draw_set_font(fRussian)
	draw_text_ext(x+85, floorpos-300, txtreal, 17, 50*4)
}