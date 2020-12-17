/// @description Insert description here
// You can write your code in this editor
if (hp <= 0)
    instance_destroy();

switch (state)
{
	case "Idle":	state_idle();	break;
	case "Chase":	state_chase();	break;
	case "Attack":	state_attack(); break;
}

hsp = hMove + moveSpeed;
vsp = vMove + moveSpeed;
x += hsp;
y += vsp;