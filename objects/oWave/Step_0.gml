// Configuration ###########################
var playerObject = oPlayer; 
var objectToPlace = oEnemy;
var antiSpawnArea = 300;
var spaceBetweenBorder = 15;
var objectsPerWave = [1, 2, 3, 4, 5];

 

var spawnAreaX = [spaceBetweenBorder, room_width - spaceBetweenBorder];
var spawnAreaY = [spaceBetweenBorder, room_height - spaceBetweenBorder];

 

function createMultipleObjects(typeObject, amountOfObjects, coordinates) {
    for (var i = 0; i < amountOfObjects; i++) {
        instance_create_layer(coordinates[i][0], coordinates[i][1], "Instances", typeObject);
    }
}

 

function generateRandomCoordinates(amountOfCoordinates, spawnAreaX, spawnAreaY, antiSpawnArea, playerObject) {
    var coordinates = [];
    for (var i = 0; i < amountOfCoordinates; i++) {
        do {
        coordinates[i][0] = random_range(spawnAreaX[0], spawnAreaX[1]);
        coordinates[i][1] = random_range(spawnAreaY[0], spawnAreaY[1]);
        } until (!checkCollision(coordinates[i], antiSpawnArea, playerObject));
    }
    return coordinates;
}

 

function checkCollision(coordinates, antiSpawnArea, playerObject) {
    var location = [playerObject.x, playerObject.y];

    var dx = coordinates[0] - location[0];
    var dy = coordinates[1] - location[1];
    var distance = sqrt(dx * dx + dy * dy);

    if (distance < antiSpawnArea) {
        return true; // Collision detected
    }


    return false; // No collision
}

 


// start new waves
var enemies = instance_number(oEnemy);
var allDead = true;

 

for (var i = 0; i < enemies;i ++) {
    if (!instance_find(oEnemy, i).dead) allDead = false;
}

 

if (allDead) {
	waveCounter++;
	var enemyAmount = waveCounter * 5;
    var coordinatesOfObjects = generateRandomCoordinates(enemyAmount, spawnAreaX, spawnAreaY, antiSpawnArea, playerObject);
    createMultipleObjects(objectToPlace, enemyAmount, coordinatesOfObjects);
	
}