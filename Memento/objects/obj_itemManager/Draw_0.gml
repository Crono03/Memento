var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

for(var i=0 ;i<array_length(inv);i++)
{
	draw_sprite(inv[i].sprite,0,vx+16,vy+16+16*i);
	draw_text(vx+16,vy+16+16*i,inv[i].nome);
}