draw_self()
draw_set_color(c_aqua)
if width < 0 {
	draw_set_color(c_red)
}
draw_rectangle(x,y-100, x+width, y-120, false)
draw_set_color(c_black)