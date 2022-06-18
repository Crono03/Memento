accept_key=keyboard_check_pressed(vk_space);

txb_x=camera_get_view_x(view_camera[0])+49
txb_y=camera_get_view_y(view_camera[0])+96

if(setup=false)
{
	setup=true
	draw_set_font(MainFont)
	draw_set_valign(fa_top);
	draw_set_halign(fa_left)
	
	//pagine
	page_number=array_length(testo);
	for(var i=0;i<page_number;i++)
	{
		lunghezza_testo=string_length(testo[i]);
		
	}
}



if(draw_char<lunghezza_testo)
{
	draw_char+=text_spd;
	draw_char=clamp(draw_char,0,lunghezza_testo);
	
}

if(accept_key)
{
	if(draw_char==lunghezza_testo)
	{
		if (pagina<page_number-1)
		{
			pagina++
			draw_char=0;
		}
		else
		{
			instance_destroy();
		}
	}
	else
	{
		draw_char=lunghezza_testo[pagina];
	}
}

//Disegnare la textbox