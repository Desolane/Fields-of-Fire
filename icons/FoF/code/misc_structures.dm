
/obj/item/metalscraps
	name = "metal scraps"
	desc = "some ruined scraps of metal"
	icon = 'maps/desert_outpost/gamemode/desert_outpost.dmi'
	icon_state = "barbedwire_dead"

/obj/item/metalscraps/attackby(obj/item/I as obj, mob/user as mob)
	. = 1

	if(!I || !user)
		return 0

	if(istype(I, /obj/item/weapon/wirecutters))
		user.visible_message("<span class='notice'>[user] starts clearing [src]...</span>",\
			"<span class='notice'>You start deconstructing [src]...</span>")
		spawn(0)
			if(do_after(user, 10) && src && src.loc)
				new /obj/item/stack/material/steel(src.loc)
				qdel(src)
		return 1
	else
		return ..()

/obj/structure/barrel
	name = "metal barrel"
	icon = 'maps/desert_outpost/gamemode/desert_outpost.dmi'
	icon_state = "barrel"
