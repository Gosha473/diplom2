/// @description Insert description here
// You can write your code in this editor

if (control)
{
	keyRight = keyboard_check(ord("D"));
keyLeft = -keyboard_check(ord("A"));
keyUp= -keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

hMove = keyLeft + keyRight;
vMove = keyUp + keyDown;

hsp = hMove * moveSpeed;
vsp = vMove * moveSpeed;

	if (hMove = 1)
	{
		sprite_index = sPlayerMoveRight;
		direction = 0;
	}
	else if (hMove = -1)
	{
		sprite_index = sPlayerMoveLeft;
		direction = 180;
	}

	if (vMove = 1)
	{
		sprite_index = sPlayerMoveDown;
		direction = 270;
	}
	else if (vMove = -1)
	{
	
		sprite_index = sPlayerMoveUp;
		direction = 90;
	
	}

	if (hMove = 0 && vMove = 0)
	{
		sprite_index = sPlayerStand;
		image_speed = 0;
		timeline_index = direction / 90;
	}
	else image_speed = 1;

	if (mouse_check_button_pressed(mb_left))
	{
		var bullet = instance_create_layer(x, y, "Bullets", oBullet);
		bullet.speed = 7;
		bullet.direction = direction;
	}

	if (mouse_check_button_pressed(mb_right))
	{
		var hpos = 0; vpos = 0;
		switch (direction)
		{
			case 0: hpos = 32; break;
			case 90: vpos = -32; break;
			case 180: hpos = -32; break;
			case 270: vpose = 32; break;
		}
	
		instance_create_layer(x + hpos, y + vpos, "Bullets", oFist);
		control = false;
		sprite_index = sPlayerStand;
        image_speed = 0;
        image_index = direction / 90;
	    xstop = x;
	    ystop = y;
	}
}
if (!control)
{
	x = xstop;
	y = ystop;
}

if (place_meeting(x + hsp, y, Owall)) 
{
	while(!place_meeting(x + sign(hsp), y, Owall))
	{
		x += sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x, y + vsp, Owall)) 
{
	while(!place_meeting(x, y + sign(vsp), Owall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;