var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

esc=keyboard_check_pressed(vk_escape);


if(esc) j=!j

if(j)
{
draw_sprite_ext(spr_textbox,1,vx,vy,3,5,0,c_white,1);
}