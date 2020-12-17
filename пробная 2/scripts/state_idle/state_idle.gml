// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

var inst = OPlayer;

if (collision_circle(x, y, chaseRange, inst, false, true))
	state = "Chase";

else
{
	if (alarm[0] <= 0)
	{
		var idle = choose(0, 1)
		if (idle)
		{
			var hdir = choose(-1, 1);
			var vdir = choose(-1, 1);
			var xx = irandom_range(x, x + hdir * 64);
			var yy = irandom_range(y, y + vdir * 64);
			
			var pathx = (xx div 32) * 32 + 16;
			var pathy = (yy div 32) * 32 + 16;
			
			if (mp_grid_path(grid, path, x, y, pathx, pathy, true))
			{
				path_start(path, moveSpeed, path_action_stop, false);
			}
			alarm[0] = 2 * room_speed; 
		}
		else
		{
			hMove = 0;
			vMove = 0;
			alarm[0] = 2 * room_speed;
		}
	}
}