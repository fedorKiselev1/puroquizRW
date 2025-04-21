if( dragging == false )
{
    if( mouse_check_button( mb_left ) )
    {
        if( mouse_x > 416 && mouse_x < 640 && mouse_y > 224 && mouse_y < 448 )
        {
            dragging = true;
			tutorial = false
        }
    }
}

if( dragging == true )
{
    var mouse_travelx = mouse_x - prevmousex;
    x += mouse_travelx;
	var mouse_travely = mouse_y - prevmousey;
    y += mouse_travely;
}

if( !mouse_check_button( mb_left ) )
{
    dragging = false;
    speed = 0;

}
prevmousex = mouse_x;
prevmousey = mouse_y;
x = clamp(x, iX - sprite_width + 224, iX)
y = clamp(y, iY - sprite_height + 224, iY)
