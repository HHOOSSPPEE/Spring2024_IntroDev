var value = irandom_range(1, global.npc_count)
show_debug_message("hello")

if(obj_npc.npc_id == value)
{
	show_debug_message("boo");
	obj_npc.text_id = ds_list_read(npc_text, npc_text_next);
	npc_text_next ++;
}


alarm[1] = npc_alarm;