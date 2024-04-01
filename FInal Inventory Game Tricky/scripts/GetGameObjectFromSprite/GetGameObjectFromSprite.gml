// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetGameObjectFromSprite(){

switch(argument0) {
    case spr_1: return obj_1;
    case spr_2: return obj_2;
    case spr_3: return obj_3;
    case spr_4: return obj_4;
	 case spr_5: return obj_5;
    // 添加更多的映射关系
    default: return undefined;
}

}