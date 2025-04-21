prevmousex = mouse_x
prevmousey = mouse_y
dragging = false
iX = x
limit = 972
toprect = 32
bottomrect = 30
color = c_white
if room == VolumeSetting {
	global.Mastervolume = 0
} else {
	x = (limit * global.Mastervolume) / 10 + iX
}