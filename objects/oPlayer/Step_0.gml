var xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yMove = keyboard_check(ord("S")) - keyboard_check(ord("W"));

 

var newXMove = xMove;
var newYMove = yMove;

 

if (xMove != 0 || yMove != 0) {
    sprite_index = Player;
} else {
    sprite_index = Player;
}

 

image_xscale = 1;

 

// Check collision with oBorder
var horizontalCollision = place_meeting(x + xMove * spd, y, oBorder);
var verticalCollision = place_meeting(x, y + yMove * spd, oBorder);

 

if (horizontalCollision) {
    newXMove = 0;
}

 

if (verticalCollision) {
    newYMove = 0;
}

 

x += newXMove * spd;
y += newYMove * spd;

 

cd--;

 

if (cd <= 0 && mouse_check_button(mb_left)) {
    cd = cdValue;
    audio_play_sound(aBullet, 1, false);
    with (instance_create_layer(x, y, "bullets", oBullet)) {
        direction = oGun.image_angle;
        speed = 8;
    }
}