/*
	Represents flexible bags that expand based on the size of their contents.
*/
/obj/item/weapon/storage/bag
	allow_quick_gather = 1
	allow_quick_empty = 1
	use_to_pickup = 1
	slot_flags = SLOT_BELT

/obj/item/weapon/storage/bag/handle_item_insertion(obj/item/W as obj, prevent_warning = 0)
	. = ..()
	if(.) update_w_class()

/obj/item/weapon/storage/bag/remove_from_storage(obj/item/W as obj, atom/new_location)
	. = ..()
	if(.) update_w_class()

/obj/item/weapon/storage/bag/can_be_inserted(obj/item/W, mob/user, stop_messages = 0)
	if(istype(src.loc, /obj/item/weapon/storage))
		if(!stop_messages)
			to_chat(user, "<span class='notice'>Take [src] out of [src.loc] first.</span>")
		return 0 //causes problems if the bag expands and becomes larger than src.loc can hold, so disallow it
	. = ..()

/obj/item/weapon/storage/bag/proc/update_w_class()
	w_class = initial(w_class)
	for(var/obj/item/I in contents)
		w_class = max(w_class, I.w_class)

	var/cur_storage_space = storage_space_used()
	while(base_storage_capacity(w_class) < cur_storage_space)
		w_class++

/obj/item/weapon/storage/bag/get_storage_cost()
	return base_storage_cost(w_class)

// -----------------------------
//          Trash bag
// -----------------------------
/obj/item/weapon/storage/bag/trash
	name = "trash bag"
	desc = "It's the heavy-duty black polymer kind. Time to take out the trash!"
	icon = 'icons/obj/janitor.dmi'
	icon_state = "trashbag0"
	item_state = "trashbag"

	w_class = ITEM_SIZE_SMALL
	storage_slots_w = 8
	storage_slots_h = 8
	can_hold = list() // any
	cant_hold = list(/obj/item/weapon/disk/nuclear)

/obj/item/weapon/storage/bag/trash/update_w_class()
	..()
	update_icon()

/obj/item/weapon/storage/bag/trash/update_icon()
	switch(w_class)
		if(2) icon_state = "trashbag0"
		if(3) icon_state = "trashbag1"
		if(4) icon_state = "trashbag2"
		if(5 to INFINITY) icon_state = "trashbag3"

// -----------------------------
//        Plastic Bag
// -----------------------------

/obj/item/weapon/storage/bag/plasticbag
	name = "plastic bag"
	desc = "It's a very flimsy, very noisy alternative to a bag."
	icon = 'icons/obj/trash.dmi'
	icon_state = "plasticbag"
	item_state = "plasticbag"

	w_class = ITEM_SIZE_TINY
	storage_slots_w = 4
	storage_slots_h = 4
	can_hold = list() // any
	cant_hold = list(/obj/item/weapon/disk/nuclear)

// -----------------------------
//           Cash Bag
// -----------------------------

/obj/item/weapon/storage/bag/cash
	name = "cash bag"
	icon = 'icons/obj/storage.dmi'
	icon_state = "cashbag"
	desc = "A bag for carrying lots of cash. It's got a big dollar sign printed on the front."
	storage_slots_w = 4
	storage_slots_h = 4
	can_hold = list(/obj/item/weapon/coin,/obj/item/weapon/spacecash)

/obj/item/weapon/storage/bag/wwi
	icon = 'icons/FoF/misc.dmi'
	can_hold = list(/obj/item/weapon/reagent_containers/food/snacks,/obj/item/ammo_magazine)
	storage_slots_w = 4
	storage_slots_h = 4
	icon_state = "grainbag"

/obj/item/weapon/storage/bag/wwi/oats
	name = "bag of oats"
	desc = "A burlap sack of processed oats."
	storage_slots_w = 8
	storage_slots_h = 2
	startswith = list(/obj/item/weapon/reagent_containers/food/snacks/oats = 8)

/obj/item/weapon/storage/bag/wwi/beans
	name = "bag of beans"
	desc = "A burlap sack of... beans?"
	storage_slots_w = 8
	storage_slots_h = 2
	startswith = list(/obj/item/weapon/reagent_containers/food/snacks/beans = 8)

/obj/item/weapon/storage/bag/wwi/ham
	name = "bag of ham"
	desc = "A burlap sack of dried ham. That can't be sanitary."
	startswith = list(/obj/item/weapon/reagent_containers/food/snacks/ham = 4)