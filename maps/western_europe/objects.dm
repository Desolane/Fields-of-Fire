
#if !defined(MATERIAL_RECIPES_OVERRIDE)
	#define MATERIAL_RECIPES_OVERRIDE 1

/*
	SIGNS
*/
/obj/structure/sign/trench
	icon = 'icons/FoF/Signs.dmi'
	name = "wooden sign"

/obj/structure/sign/trench/wallammo
	icon_state = "wallammo"
	desc = "A wooden sign indicating this is where ammo is stored."
/obj/structure/sign/trench/wallmine
	icon_state = "wallmine"
	desc = "A wooden sign warning that there are mines nearby."
/obj/structure/sign/trench/wallnml
	icon_state = "wallnml"
	desc = "A wooden sign warning that death lies beyond this point."
/obj/structure/sign/trench/wallmed
	icon_state = "wallmed"
	desc = "A wooden sign indicating this is the medical dug out."
/obj/structure/sign/trench/wallfood
	icon_state = "wallfood"
	desc = "A wooden sign indicating this is where food is."
/obj/structure/sign/trench/wallhq
	icon_state = "wallhq"
	desc = "A wooden sign indicating this is where HQ is."
/obj/structure/sign/trench/wallqm
	icon_state = "wallqm"
	desc = "A wooden sign indicating that this is the Quartermaster."
/obj/structure/sign/trench/ammo
	icon_state = "ammo"
	desc = "A wooden sign indicating this is where ammo is stored."
/obj/structure/sign/trench/mine
	icon_state = "mine"
	desc = "A wooden sign warning that there are mines nearby."
/obj/structure/sign/trench/nml
	icon_state = "nml"
	desc = "A wooden sign warning that death lies beyond this point."
/obj/structure/sign/trench/med
	icon_state = "med"
	desc = "A wooden sign indicating this is the medical dug out."
/obj/structure/sign/trench/food
	icon_state = "food"
	desc = "A wooden sign indicating this is where food is."
/obj/structure/sign/trench/hq
	icon_state = "hq"
	desc = "A wooden sign indicating this is where HQ is."
/obj/structure/sign/trench/qm
	icon_state = "qm"
	desc = "A wooden sign indicating that this is where the Quartermaster resides."

/*
	PAPERS, PLEASE!
*/

/obj/item/wwi/stack
	name = "intelligence"
	desc = "A stack of envelopes full of incriminating details of the army's information."
	icon = 'icons/FoF/misc.dmi'
	icon_state = "letter_pack"

/obj/item/weapon/coin/req
	icon = 'icons/FoF/misc.dmi'
	name = "Requisition Receipt"
	desc = "Insert this voucher into the dispenser to recieve a loadout."
	icon_state = "paper_words"

/obj/item/weapon/coin/req/attack_self(mob/user as mob)
	return

/obj/item/wwi/transit
	icon = 'icons/FoF/misc.dmi'
	icon_state = "lettercase_f"
	name = "Transportation Receipt"
	desc = "A voucher used to board the train and go to war. Make sure you are completely prepared before using this."
	w_class = ITEM_SIZE_TINY
	var/teleport
	var/turf/teleport_spot

/obj/item/wwi/transit/proc/search_compatible_points()
	var/list/valid_points = list()
	for(var/obj/effect/landmark/wakeup/t in world)
		valid_points += t
	teleport_spot = pick(valid_points)

/obj/item/wwi/transit/proc/calculate_point()
	var/list/valid_points = list()
	if(!teleport_spot)
		search_compatible_points()
	for(var/turf/t in view(teleport_spot,0))
		if(istype(t,/turf/simulated/floor))
			valid_points += t
		if(istype(t,/turf/unsimulated/floor))
			valid_points += t
	if(isnull(valid_points))
		return
	return pick(valid_points)

/obj/item/wwi/transit/attack_self(mob/user as mob)
	user.visible_message("<span class='notice'>[user] wanders off to find the transit officer.</span>")
	teleport_spot = calculate_point()
	teleport = 1
	if(teleport)
		user.forceMove(teleport_spot)
	to_chat(user, "<span class='warning'>You awaken from your slumber. You're still here...</span>")
	qdel(src)

/obj/item/wwi/transit/brit

/obj/item/wwi/transit/brit/search_compatible_points()
	var/list/valid_points = list()
	for(var/obj/effect/landmark/wakeup/brit/t in world)
		valid_points += t
	teleport_spot = pick(valid_points)

/obj/item/wwi/transit/german

/obj/item/wwi/transit/german/search_compatible_points()
	var/list/valid_points = list()
	for(var/obj/effect/landmark/wakeup/german/t in world)
		valid_points += t
	teleport_spot = pick(valid_points)

/obj/effect/landmark/wakeup
	name = "Wake Up Point"
	invisibility = 101

/obj/effect/landmark/wakeup/german

/obj/effect/landmark/wakeup/brit

/obj/item/device/whistle
	name = "whistle"
	desc = "Used by officers to send their soldiers into yet another reckless assault. Tell your chaplain to prepare coffins before using this."
	icon_state = "whistle"
	item_state = "flashbang"	//looks exactly like a flash (and nothing like a flashbang)
	w_class = 1.0
	flags = CONDUCT

	var/spamcheck = 0

obj/item/device/whistle/attack_self(mob/living/carbon/user as mob)
	if (spamcheck)
		return

	playsound(get_turf(src), 'sound/weapons/whistle.ogg', 100, 1, vary = 0)
	user.audible_message("<span class='warning'>[user] whistles into his [name]! OVER THE TOP, BOYS!</span>")
	spamcheck = 1
	spawn(50)
		spamcheck = 0

/*
	MATERIAL HANDLING
*/

/material/proc/get_recipes()
	if(!recipes)
		generate_recipes()
	return recipes

/material/proc/generate_recipes()
	recipes = list()

/material/steel/generate_recipes()
	recipes = list()

	recipes += new/datum/stack_recipe("barbed wire coil", /obj/item/stack/barbedwire, time = 10)
	recipes += new/datum/stack_recipe("tank trap", /obj/structure/tanktrap, 4, one_per_turf = 1, on_floor = 1, time = 20)

/area/the_shit
	luminosity = 1
	has_gravity = 1
	requires_power = 0
	base_turf = /turf/simulated/floor/planet/dirt

/*
	HOLLOW POINTS
*/

/obj/item/ammo_casing/attackby(obj/item/weapon/A as obj, mob/user as mob)
	if(istype(A, /obj/item/weapon/melee/combat_knife))
		user.visible_message("<span class='info'>You begin to hollow out the tip of the round with the trench knife.</span>")
		if(do_after(user, 5))
			if(istype(src, /obj/item/ammo_casing/a792))
				qdel(src)
				user.put_in_hands(new /obj/item/ammo_casing/a792hp(user.loc))
				to_chat(user, "<span class='warning'>You create a hollow point. This feels illegal!</span>")
			if(istype(src, /obj/item/ammo_casing/a303/))
				qdel(src)
				user.put_in_hands(new /obj/item/ammo_casing/a303hp(user.loc))
				to_chat(user, "<span class='warning'>You create a hollow point. This feels illegal!</span>")
			if(istype(src, /obj/item/ammo_casing/c8mm/))
				qdel(src)
				user.put_in_hands(new /obj/item/ammo_casing/c8mmhp(user.loc))
				to_chat(user, "<span class='warning'>You create a hollow point. This feels illegal!</span>")
			if(istype(src, /obj/item/ammo_casing/c32acp))
				qdel(src)
				user.put_in_hands(new /obj/item/ammo_casing/c32acphp(user.loc))
				to_chat(user, "<span class='warning'>You create a hollow point. This feels illegal!</span>")
			if(istype(src, /obj/item/ammo_casing/c9mm))
				qdel(src)
				user.put_in_hands(new /obj/item/ammo_casing/c9mmhp(user.loc))
				to_chat(user, "<span class='warning'>You create a hollow point. This feels illegal!</span>")
			if(istype(src, /obj/item/ammo_casing/a455))
				qdel(src)
				user.put_in_hands(new /obj/item/ammo_casing/a455hp(user.loc))
				to_chat(user, "<span class='warning'>You create a hollow point. This feels illegal!</span>")
			if(istype(src, /obj/item/ammo_casing/a3030))
				qdel(src)
				user.put_in_hands(new /obj/item/ammo_casing/a3030hp(user.loc))
				to_chat(user, "<span class='warning'>You create a hollow point. This feels illegal!</span>")
			if(istype(src, /obj/item/ammo_casing/a45))
				qdel(src)
				user.put_in_hands(new /obj/item/ammo_casing/a45hp(user.loc))
				to_chat(user, "<span class='warning'>You create a hollow point. This feels illegal!</span>")
			if(istype(src, /obj/item/ammo_casing/shotgun))
				to_chat(user, "You can't hollow out a shotgun shell. That defeats the purpose.")
				return

/*
	CANNED GOODS
*/

/obj/item/weapon/wwi/can
	icon = 'icons/FoF/misc.dmi'
	throwforce = 10

/obj/item/weapon/wwi/can/attackby(obj/item/weapon/C as obj, mob/user as mob)
	if(istype(C, /obj/item/weapon/screwdriver))
		playsound(src.loc, 'sound/effects/canopen.ogg', 100, 1, -4)
		if(istype(src, /obj/item/weapon/wwi/can/fish))
			qdel(src)
			user.put_in_hands(new /obj/item/weapon/reagent_containers/food/snacks/can/fish(user.loc))
		if(istype(src, /obj/item/weapon/wwi/can/soup))
			qdel(src)
			user.put_in_hands(new /obj/item/weapon/reagent_containers/food/snacks/can/soup(user.loc))
		if(istype(src, /obj/item/weapon/wwi/can/beans))
			qdel(src)
			user.put_in_hands(new /obj/item/weapon/reagent_containers/food/snacks/can/beans(user.loc))
		if(istype(src, /obj/item/weapon/wwi/can/ham))
			qdel(src)
			user.put_in_hands(new /obj/item/weapon/reagent_containers/food/snacks/can/ham(user.loc))


/obj/item/weapon/wwi/can/fish
	name = "\improper Ration Fish"
	desc = "A can of reeking fish meant to last months in the trenches. Open with a can opener."
	icon_state = "fish"

/obj/item/weapon/wwi/can/soup
	name = "\improper Ration Soup"
	desc = "A can of sour soup meant to last months in the trenches. Open with a can opener."
	icon_state = "soup"

/obj/item/weapon/wwi/can/beans
	name = "\improper Ration Beans"
	desc = "A can of bland beans meant to last months in the trenches. Open with a can opener."
	icon_state = "beans"

/obj/item/weapon/wwi/can/ham
	name = "\improper Ration Ham"
	desc = "A can of ham meant to last months in the trenches. Open with a can opener."
	icon_state = "ham"

#endif