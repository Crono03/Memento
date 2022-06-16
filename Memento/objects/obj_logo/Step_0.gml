
curvePosition+=curveSpeed;

var channel= animcurve_get_channel(ani_smooth,"curve1");

var value=animcurve_channel_evaluate(channel,curvePosition);


image_alpha+=value

space=keyboard_check_pressed(vk_space);

if(space && !instance_exists(obj_mianmenu)&& image_alpha>1)
{
	instance_create_layer(0,0,"Instances",obj_mianmenu)
}