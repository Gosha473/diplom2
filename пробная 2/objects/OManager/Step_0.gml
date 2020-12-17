/// @description Insert description here
// You can write your code in this editor
var count = instance_number(OEnemy);
if (alarm[0] <= 0 && count < 10 )
{
	var xx = irandom_range(0, room_width);
	var yy = irandom_range(0, room_height);
	var enemy = instance_create_layer(xx, yy, "NPC", OEnemy);
	with (enemy) 
	{
		while (place_meeting(x, y, OEnemy))
		{
			x = irandom_range(0, room_width);
			y = irandom_range(0, room_height);
		}
	}
	alarm[0] = 2 * room_speed;
}