//Camminata
up=keyboard_check(ord("W"));
left=keyboard_check(ord("A"))
down=keyboard_check(ord("S"))
right=keyboard_check(ord("D"))

if(up)
{
	y-=vel;
}

if(down)
{
	y+=vel;
}

if(left)
{
	x-=vel;
}

if(right)
{
	x+=vel;
}