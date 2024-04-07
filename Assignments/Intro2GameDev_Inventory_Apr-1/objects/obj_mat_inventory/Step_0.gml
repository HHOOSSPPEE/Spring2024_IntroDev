if (mouse_check_button_pressed(mb_left)) 
{
    if (position_meeting(mouse_x, mouse_y, self))
	{
		var exist = obj_inventory.list.item_find_sprite(sprite_index);

		if(exist != -1)
		{
			obj_inventory.inventory.item_remove(exist);
			obj_inventory.list.item_remove(exist);
			instance_destroy();
		}
	}
}

_id = obj_inventory.inventory.item_find_name(pos) + 1;
//y = obj_manager.y_start + obj_manager.y_offset * (_id -1);

show_debug_message(_id);

switch(_id)
{
	case 1:
		y = obj_manager.y1;
		break;
	case 2:
		y = obj_manager.y2;
		break;
	case 3:
		y = obj_manager.y3;
		break;
	case 4:
		y = obj_manager.y4;
		break;
	case 5:
		y = obj_manager.y5;
		break;
	default:
		break;
}