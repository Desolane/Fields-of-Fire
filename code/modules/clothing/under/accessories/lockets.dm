/obj/item/clothing/accessory/locket
	name = "silver locket"
	desc = "A silver locket that seems to have space for a photo within."
	icon_state = "locket"
	item_state = "locket"
	slot_flags = 0
	w_class = ITEM_SIZE_SMALL
	slot_flags = SLOT_MASK | SLOT_TIE
	var/base_icon
	var/open
	var/obj/item/held //Item inside locket.

/obj/item/clothing/accessory/locket/attack_self(mob/user as mob)
	if(!base_icon)
		base_icon = icon_state

	if(!("[base_icon]_open" in icon_states(icon)))
		to_chat(user, "\The [src] doesn't seem to open.")
		return

	open = !open
	to_chat(user, "You flip \the [src] [open?"open":"closed"].")
	if(open)
		icon_state = "[base_icon]_open"
		playsound(src.loc, 'sound/items/zippo_open.ogg', 100, 1, -4)
		if(held)
			to_chat(user, "\The [held] falls out!")
			held.loc = get_turf(user)
			src.held = null
	else
		playsound(src.loc, 'sound/items/zippo_close.ogg', 100, 1, -4)
		icon_state = "[base_icon]"

/obj/item/clothing/accessory/locket/attackby(var/obj/item/O as obj, mob/user as mob)
	if(!open)
		to_chat(user, "You have to open it first.")
		return

	if(istype(O,/obj/item/weapon/paper) || istype(O, /obj/item/weapon/photo))
		if(held)
			to_chat(usr, "\The [src] already has something inside it.")
		else
			to_chat(usr, "You slip [O] into [src].")
			user.drop_item()
			O.loc = src
			src.held = O
		return
	..()

/obj/item/clothing/accessory/locket/watch
	icon = 'icons/FoF/misc.dmi'
	w_class = ITEM_SIZE_TINY
	name = "pocket watch"
	desc = "A small pocket watch. It looks like a picture might fit in here."

/obj/item/clothing/accessory/locket/watch/examine(mob/user)
	. = ..(user, 1)
	if(open)
		to_chat(user, "The time is [stationtime2text()].")
	else
		to_chat(usr, "You have to open the watch to check the time.")
		return