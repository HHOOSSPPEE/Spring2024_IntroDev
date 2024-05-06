sprite_index = item.sprite;

if place_meeting(x, y, obj_player)
{
	if item_add(item) == true
	{
		audio_play_sound(snd_item_pick_up, 1, false);
		instance_destroy();
	}
}