/// @id
/// @radius
function Interactable(_id, _radius)
{
	if ((point_distance(_id.x,_id.y, obj_player.x, obj_player.y) <= _radius))
	{
		return true;
	}
	return false;
}