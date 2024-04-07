x -= 15;

if(x + sprite_width < 0)
{
	instance_destroy();
}


if (mouse_check_button_pressed(mb_left)) 
{ 
	var inst = instance_position(mouse_x, mouse_y, obj_materials); 
	if (inst != noone) 
	{
		if(obj_inventory.inventory.item_count() < 5)
		{
			with (inst) 
			{
				instance_destroy();
				var i = array_length(obj_inventory.inventory.inventory_items);
				var mat = instance_create_layer(obj_manager.x_start, obj_manager.y_start + (obj_manager.y_offset*i), "Instances", obj_mat_inventory);
				var num = random(1);
				switch(_self)
				{
					case 0:
						obj_inventory.inventory.item_set(num, spr_mat_cabbage);
						with mat
						{
							sprite_index = spr_mat_cabbage;
						}
						mat.pos = num;
						break;
					case 1:
					
						obj_inventory.inventory.item_set(num, spr_mat_chicken);
						with mat
						{
							sprite_index = spr_mat_chicken;
						}
						mat.pos = num;
						break;
					case 2:
						obj_inventory.inventory.item_set(num, spr_mat_fish);
						with mat
						{
							sprite_index = spr_mat_fish;
						}
						mat.pos = num;
						break;
					case 3:
						obj_inventory.inventory.item_set(num, spr_mat_leek);
						with mat
						{
							sprite_index = spr_mat_leek;
						}
						mat.pos = num;
						break;
					case 4:
						obj_inventory.inventory.item_set(num, spr_mat_peas);
						with mat
						{
							sprite_index = spr_mat_peas;
						}
						mat.pos = num;
						break;
					case 5:
						obj_inventory.inventory.item_set(num, spr_mat_tomato);
						with mat
						{
							sprite_index = spr_mat_tomato;
						}
						mat.pos = num;
						break;
					default:
						break;
				}
			}
		}
		else
		{
			obj_manager.item_full_trigger = true;
		}
	}
}
