/// @description Insert description here
// You can write your code in this editor
hp = 100;

state = "Idle";

chaseRange = 128;
attackRange = 64;

attackSpeed = 2;
attackDamage = 25;

moveSpeed = 3;
hMove = 0;
vMove = 0;

path = path_add();

alarm[0] = 2 * room_speed;