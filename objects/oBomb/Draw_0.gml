draw_self()
draw_set_color(#00FF00)
if timer < 21 {
draw_set_color(#FF0000)
}
draw_set_font(fDigit)
draw_text(x,y,$"{timer div 60}:{timer % 60 < 10 ? "0" : ""}{timer % 60}")
draw_set_color(c_black)