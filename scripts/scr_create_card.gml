var element = argument0;
var cost = argument1;
var damage = argument2;

var card = instance_create(0, 0, obj_card);
card.element = element;
card.cost = cost;
var i;
i = 0;
card.effects[i++] = 0;
card.effects[i++] = 0;
i = 0;
card.values[i++] = damage;
card.values[i++] = damage;

return card;
