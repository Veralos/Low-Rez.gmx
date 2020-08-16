var deck = argument0;
var hand = argument1;
var selected = argument2;

if (!ds_list_empty(hand)) {
    ds_list_add(deck, ds_list_find_value(hand, selected));
    ds_list_delete(hand, selected);
}
