/// @description Insert description here
// You can write your code in this editor

if(is_show_inventory){
	var width_half = display_get_gui_width()/2;
	var height_half = display_get_gui_height()/2;
	var item_num_half = inventory.max_item/2;
	var sprite_width_padding = 86 + 64;
	
	var xx = width_half - (sprite_width_padding *floor(item_num_half));
	var yy = height_half;
	
	
	//background
	for(var i =0;i<inventory.max_item;i++)
	{
		draw_sprite(spr_inventory_background,0,xx+(sprite_width_padding*i),yy)
	}
	var items = inventory.getAll();
	for(var i=0; i<array_length(items); i++)
	{
		draw_sprite(items[i].sprite,0,xx+(sprite_width_padding*i),yy);
		
		if(items[i].hover){
			draw_set_color(c_white);
			draw_rectangle((i*sprite_width_padding)-24, yy-43, (i*sprite_width_padding)+24, yy+43,true);
		}
		
		//text
		draw_set_halign(fa_center)
		draw_text_ext_transformed(xx+(i*sprite_width_padding),yy+(i*sprite_width_padding)/2,items[i].name,24,50,0.75,0.75,15);
	}
}