event_inherited()
if scary >= 1 {
	gpu_set_blendmode(bm_add)
	draw_set_color(c_red)
	draw_set_alpha(alpha)
	draw_rectangle(-20, -20, room_width + 20, room_height + 20, false)
	gpu_set_blendmode(bm_normal)
	draw_set_alpha(1)
}
if scary = 2 {
	draw_set_color(c_red)
	draw_set_alpha(alpha2)
	draw_rectangle(0, 0, room_width, room_height, false)
	gpu_set_blendmode(bm_normal)
	draw_set_alpha(1)
}