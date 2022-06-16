up=keyboard_check_pressed(ord("W"));
left=keyboard_check(ord("A"))
down=keyboard_check_pressed(ord("S"))
right=keyboard_check_released(ord("D"))
selected=clamp(selected,0,2)
if(down)
{
	selected++
}

if(up)
{
	selected--
}
space=keyboard_check_pressed(vk_space);

if(space)
{
	switch(selected)
	{
		case 0: room_goto_next();
		break;
		
		case 1: room_goto_next();
		break;
		
		case 2: exit;
		break;
	}
}
