/// @description Insert description here
// You can write your code in this editor
if (dead) {
	sprite_index = Clock_Dead_Sprite;
	speed = 0;
} else {
	direction = point_direction(x, y, oPlayer.x, oPlayer.y);
	speed = random_range(0.5, 1.5);

	if (direction > 90 && direction < 270) {
		image_xcale = -1;	
	} else {
		image_xcale = 1;	
	}
}
