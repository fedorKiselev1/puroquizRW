if grabbable == false {
	if (! surface_exists(surfacewithmask)) {surfacewithmask = surface_create(room_width, room_height); }

	surface_set_target(surfacewithmask)
	draw_self()

	gpu_set_blendmode(bm_subtract)
	draw_rectangle(occlude, y, sprite_width+x, sprite_height+y, false)
	gpu_set_blendmode(bm_normal)

	surface_reset_target();

	draw_surface(surfacewithmask,0,0)
} else {
	draw_self()
}