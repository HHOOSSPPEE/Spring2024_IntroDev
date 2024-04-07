dishes = [spr_dish_chicken, spr_dish_fish, spr_dish_tomato];

_self = irandom_range(0, 2);

x1 = 1100;
y1 = 200;
y2 = 350;
y3 = 500;

sprite_index = dishes[_self];

switch(_self)
{
	case 0:
		obj_inventory.list.item_set("chicken", spr_mat_chicken);
		obj_inventory.list.item_set("cabbage", spr_mat_cabbage);
		obj_inventory.list.item_set("peas", spr_mat_peas);
		
		var one = instance_create_layer(x1, y1, "Instances", obj_list);
		with one 
		{
			sprite_index = spr_mat_chicken;
		}
		
		var two = instance_create_layer(x1, y2, "Instances", obj_list);
		with two
		{
			sprite_index = spr_mat_cabbage;
		}
		
		var three = instance_create_layer(x1, y3, "Instances", obj_list);
		with three
		{
			sprite_index = spr_mat_peas;
		}
		
		break;
	case 1:
		obj_inventory.list.item_set("fish", spr_mat_fish);
		obj_inventory.list.item_set("leek", spr_mat_leek);
		obj_inventory.list.item_set("peas", spr_mat_peas);
		
		var one = instance_create_layer(x1, y1, "Instances", obj_list);
		with one 
		{
			sprite_index = spr_mat_fish;
		}
		
		var two = instance_create_layer(x1, y2, "Instances", obj_list);
		with two
		{
			sprite_index = spr_mat_leek;
		}
		
		var three = instance_create_layer(x1, y3, "Instances", obj_list);
		with three
		{
			sprite_index = spr_mat_peas;
		}
		
		break;
	case 2:
		obj_inventory.list.item_set("tomato", spr_mat_tomato);
		obj_inventory.list.item_set("leek", spr_mat_leek);
		obj_inventory.list.item_set("cabbage", spr_mat_cabbage);
		
		var one = instance_create_layer(x1, y1, "Instances", obj_list);
		with one 
		{
			sprite_index = spr_mat_tomato;
		}
		
		var two = instance_create_layer(x1, y2, "Instances", obj_list);
		with two
		{
			sprite_index = spr_mat_leek;
		}
		
		var three = instance_create_layer(x1, y3, "Instances", obj_list);
		with three
		{
			sprite_index = spr_mat_cabbage;
		}
		break;
	default:
		break;
}