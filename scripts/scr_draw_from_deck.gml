var deck = argument0;
var hand = argument1;

ds_list_add(hand, ds_list_find_value(deck, 0));
ds_list_delete(deck, 0);
