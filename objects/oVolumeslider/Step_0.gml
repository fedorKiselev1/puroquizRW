if( dragging == false )
{
    if( mouse_check_button( mb_left ) && mouse_check_button_pressed( mb_left ) )
    {
        if( instance_position(mouse_x, mouse_y, oVolumeslider) )
        {
            dragging = true;
        }
    }
}

if( !mouse_check_button( mb_left ) )
{
    dragging = false;

}

if( dragging == true )
{
    var mouse_travelx = mouse_x - prevmousex;
    x += mouse_travelx;
}
prevmousex = mouse_x;
prevmousey = mouse_y;
x = clamp(x, iX, iX + limit)

global.Mastervolume = (x - iX) / limit

audio_master_gain(global.Mastervolume)