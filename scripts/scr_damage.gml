var damage = argument0;
var element = argument1;
var enemy = argument2;

var check = element - enemy.element;
if (check < 0) {
    check += 3;
}

if (check == 1) {
    damage = damage div 2;
} 
else if (check == 2) {
    damage = damage * 2;
}

enemy.hp -= damage;

var dn = instance_create(enemy.x, enemy.y, obj_damage_number);
dn.damage = damage;
