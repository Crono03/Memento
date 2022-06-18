//Camminata
up=keyboard_check(ord("W"));
left=keyboard_check(ord("A"))
down=keyboard_check(ord("S"))
right=keyboard_check(ord("D"))

var tile=layer_get_id("Tiles_Collision");
var map=layer_tilemap_get_id(tile);

if(up)
{
	var top_top=tilemap_get_at_pixel(map,bbox_right,bbox_top-vel);
	var top_bottom=tilemap_get_at_pixel(map,bbox_left,bbox_top-vel);
	
	if(top_top=0 && top_bottom=0)
	{
		y-=vel;
	}
}

if(down)
{
	var down_top=tilemap_get_at_pixel(map,bbox_right,bbox_bottom+vel);
	var down_bottom=tilemap_get_at_pixel(map,bbox_left,bbox_bottom+vel);
	
	if(down_top=0 && down_bottom=0)
	{
		y+=vel;
	}
	
}

if(left)
{
	var left_top=tilemap_get_at_pixel(map,bbox_left-vel,bbox_top);
	var left_bottom=tilemap_get_at_pixel(map,bbox_left-vel,bbox_bottom);
	
	if(left_top=0 && left_bottom=0)
	{
		x-=vel;
	}
}

if(right)
{
	var right_top=tilemap_get_at_pixel(map,bbox_right+vel,bbox_top);
	var right_bottom=tilemap_get_at_pixel(map,bbox_right+vel,bbox_bottom);
	
	if(right_top=0 && right_bottom=0)
	{
		x+=vel;
	}
}

//Collisione con tile


//Sinistra

