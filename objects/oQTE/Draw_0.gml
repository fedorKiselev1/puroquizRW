draw_self()
draw_set_font(fRodonto)
draw_text(x + 140, y + 20, options)

switch drawmode {
	case 0:
		draw_set_color(c_green)
		break;
	case 1:
		draw_set_color(c_yellow)
		break;
	case 2:
		draw_set_color(c_red)
		break;
}
draw_rectangle(x + shake,y+300 + shake2, x+width + shake, y+350 + shake2, false)
		draw_set_color(c_black)