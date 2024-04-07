function Inventory() constructor 
{
    inventory_items = [];
  
    item_set = function(_name, _sprite)
    {
        array_push(inventory_items, 
        {
            name: _name,
            sprite: _sprite,
        });
    }
    
    item_find_sprite = function(_sprite)
    {
        for (var i = 0; i < array_length(inventory_items); i++)
        {
            if(_sprite == inventory_items[i].sprite)
            {
                return i;
            }
        }
        return -1;
    }
	
	item_find_name = function(_name)
    {
        for (var i = 0; i < array_length(inventory_items); i++)
        {
            if(_name == inventory_items[i].name)
            {
                return i;
            }
        }
        return -1;
    }


    item_has = function(_name)
    {
        var index = item_find(_name);
        return index >= 0;
    }
    
    item_remove = function(_index)
    {
        array_delete(inventory_items, _index, 1);
    }
    
    item_count = function()
    {
        return array_length(inventory_items);
    }
	
    toString = function()
    {
        return json_stringify(inventory_items);
    }
}