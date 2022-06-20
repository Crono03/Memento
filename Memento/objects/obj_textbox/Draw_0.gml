accept_key=keyboard_check_pressed(vk_space);

txb_x=camera_get_view_x(view_camera[0])+49
txb_y=camera_get_view_y(view_camera[0])+115

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
		lunghezza_testo[i]=string_length(testo[i]);
		
	}
}



if(draw_char<lunghezza_testo[pagina])
{
	draw_char+=text_spd;
	draw_char=clamp(draw_char,0,lunghezza_testo[pagina]);
	
}

if(accept_key)
{
	if(draw_char==lunghezza_testo[pagina])
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
		show_debug_message("1");
		draw_char=lunghezza_testo[pagina];
	}
}

//Disegnare la textbox
textb_image=0
txtb_sprite_w=sprite_get_width(textb_spr);
txtb_sprite_h=sprite_get_height(textb_spr);

draw_sprite_ext(textb_spr,textb_image,txb_x,txb_y,txb_w/txtb_sprite_w,txb_h/txtb_sprite_h,0,c_white,1);
//testp
var _drawtext=string_copy(testo[pagina],1,draw_char);
draw_text_ext_transformed(txb_x+border,txb_y+border,_drawtext,line_sep,line_w,txt_dim,txt_dim,0)

