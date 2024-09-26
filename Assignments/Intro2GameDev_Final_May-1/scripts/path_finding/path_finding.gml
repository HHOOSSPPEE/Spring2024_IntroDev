function path_finding(path, _speed, dest_x, dest_y, height)
{
	var toPlayer = mp_grid_path(global.mp_grid, path, x, y - height, dest_x, dest_y - height, choose(0,1));

	if(toPlayer)
	{
		path_start(path, _speed, path_action_stop, false);
	}
}