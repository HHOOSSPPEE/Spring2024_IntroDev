// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory() constructor {		
	_inventory = [];
	max_item = 7;
	
	add = function(_sprite, _name, _object){
		if(array_length(_inventory) < max_item){
			array_push(_inventory, {
				sprite: _sprite,
				name: _name,
				object: _object,
				hover: false});
		}
	}

	getAll = function() {
	return _inventory;
	}
	remove = function(index){
	array_delete(_inventory,index,1);
	}

	select = function(index){
	deselect();
	
	_inventory[index].hover = true;
	}

	deselect = function(){
	for(var i=0; i<array_length(_inventory); i++)
	{
		_inventory[i].hover = false;
	}
	}
}