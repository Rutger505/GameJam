/// @description Insert description here
// You can write your code in this editor
var enemies = instance_number(oEnemy);
var allDead = true;

time--;
	for (var i = 0; i < enemies; i++) {
		if (!instance_find(oEnemy, i).dead) allDead = false;	
	}

if (allDead && time <= 0) {
	rounds++;
	try {
	roundTextInstance.display_text = "Round " + string(rounds);
	} catch( _exception)
{
    show_debug_message(_exception.message);
    show_debug_message(_exception.longMessage);
    show_debug_message(_exception.script);
    show_debug_message(_exception.stacktrace);
}
	time = timeBetweenRound;
};