if (! surface_exists(surfacewithmask)) {surfacewithmask = surface_create(room_width, room_height); }

surface_set_target(surfacewithmask)
draw_self()

gpu_set_blendmode(bm_subtract)
draw_rectangle(0, 0, 416, room_height, false)
draw_rectangle(0, 0, room_width, 224, false)
draw_rectangle(640, 0, room_width, room_height, false)
draw_rectangle(0, 448, room_width, room_height, false)
gpu_set_blendmode(bm_normal)

surface_reset_target();

draw_surface(surfacewithmask,0,0)
draw_sprite(sBorder, 0, iX, iY)

if tutorial == true {
	draw_set_alpha(0.6)
	draw_sprite(sMouse, 0, 560, 224)
	draw_set_alpha(1)
}

