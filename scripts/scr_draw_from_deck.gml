var deck = argument0;
var hand = argument1;
var discard = argument2;

if (ds_list_empty(deck)) { 
    while (!ds_list_empty(discard)) {
        ds_list_add(deck, ds_list_find_value(discard, 0));
        ds_list_delete(discard, 0);
    }
    
    ds_list_shuffle(deck);
}
if (!ds_list_empty(deck)) { 
    ds_list_add(hand, ds_list_find_value(deck, 0));
    ds_list_delete(deck, 0);
}
