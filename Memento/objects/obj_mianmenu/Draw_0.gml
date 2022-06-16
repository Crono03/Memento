var _xx=145;
var _yy=95;
draw_set_font(MainFont);
for(var i=0; i<array_length(options);i++)
{
	if(selected==i)
	{
		draw_text_transformed_color(_xx,_yy+20+14.3*i,options[i],0.35,0.35,0,c_yellow,c_yellow,c_yellow,c_yellow,1)
	}
	else{
	draw_text_transformed(_xx,_yy+20+14.3*i,options[i],0.35,0.35,0);
	}
}

