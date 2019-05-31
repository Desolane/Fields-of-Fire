/obj/item/weapon/gun/projectile/automatic //Hopefully someone will find a way to make these fire in bursts or something. --Superxpdude
	name = "prototype SMG"
	desc = "A protoype lightweight, fast firing gun. Uses 9mm rounds."
	icon_state = "saber"	//ugly
	w_class = ITEM_SIZE_NORMAL
	load_method = SPEEDLOADER //yup. until someone sprites a magazine for it.
	max_shells = 22
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c9mm
	multi_aim = 1
	burst_delay = 2

	//machine pistol, easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/machine_pistol
	name = ".45 machine pistol"
	desc = "An uncommon machine pistol, sometimes refered to as an 'uzi' by the backwater spacers it is often associated with, though its origins have been lost to time. Uses .45 rounds."
	icon_state = "mpistolen"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	load_method = MAGAZINE
	caliber = ".45"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 3)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c45
	magazine_type = /obj/item/ammo_magazine/c45uzi
	allowed_magazines = /obj/item/ammo_magazine/c45uzi //more damage compared to the wt550, smaller mag size

	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/mini_uzi/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "mpistolen"
	else
		icon_state = "mpistolen-empty"

/obj/item/weapon/gun/projectile/automatic/c20r
	name = "submachine gun"
	desc = "The C-20r is a lightweight and rapid firing SMG, for when you REALLY need someone dead. Uses 10mm rounds. Has a 'Scarborough Arms - Per falcis, per pravitas' buttstamp."
	icon_state = "c20r"
	item_state = "c20r"
	w_class = ITEM_SIZE_LARGE
	force = 10
	caliber = "10mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2, TECH_ILLEGAL = 8)
	slot_flags = SLOT_BELT|SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a10mm
	allowed_magazines = /obj/item/ammo_magazine/a10mm
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 1

	//SMG
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=3, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=4, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/c20r/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "c20r-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "c20r"
	return

/obj/item/weapon/gun/projectile/automatic/sts35
	name = "assault rifle"
	desc = "The rugged STS-35 is a durable automatic weapon of a make popular on the frontier worlds. The serial number has been scratched off. Uses 7.62mm rounds."
	icon_state = "arifle"
	item_state = null
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = "a762"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 5)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/c762
	allowed_magazines = /obj/item/ammo_magazine/c762
	one_hand_penalty = 3
	wielded_item_state = "arifle-wielded"

	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=4, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=6,    one_hand_penalty=5, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=6,    one_hand_penalty=6, burst_accuracy=list(0,-1,-2,-3,-3), dispersion=list(0.6, 1.0, 1.2, 1.2, 1.5)),
		)

/obj/item/weapon/gun/projectile/automatic/sts35/update_icon()
	icon_state = (ammo_magazine)? "arifle" : "arifle-empty"
	wielded_item_state = (ammo_magazine)? "arifle-wielded" : "arifle-wielded-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/wt550
	name = "9mm machine pistol"
	desc = "The W-T 550 Saber is a cheap self-defense weapon, mass-produced by Ward-Takahashi for paramilitary and private use. Uses 9mm rounds."
	icon_state = "wt550"
	item_state = "wt550"
	w_class = ITEM_SIZE_NORMAL
	caliber = "9mm"
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT
	ammo_type = /obj/item/ammo_casing/c9mm/rubber
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/mc9mmt/rubber
	allowed_magazines = /obj/item/ammo_magazine/mc9mmt

	//machine pistol, like SMG but easier to one-hand with
	firemodes = list(
		list(mode_name="semiauto",       burst=1, fire_delay=0,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=null, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,-1,-1),       dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="short bursts",   burst=5, fire_delay=null, move_delay=4,    one_hand_penalty=2, burst_accuracy=list(0,-1,-1,-1,-2), dispersion=list(0.6, 0.6, 1.0, 1.0, 1.2)),
		)

/obj/item/weapon/gun/projectile/automatic/wt550/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "wt550-[round(ammo_magazine.stored_ammo.len,4)]"
	else
		icon_state = "wt550"
	return

/obj/item/weapon/gun/projectile/automatic/z8
	name = "bullpup assault rifle"
	desc = "The Z8 Bulldog is an older model bullpup carbine, made by the now defunct Zendai Foundries. Uses armor piercing 5.56mm rounds. Makes you feel like a space marine when you hold it."
	icon_state = "carbine"
	item_state = "z8carbine"
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = "a556"
	origin_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 3)
	ammo_type = /obj/item/ammo_casing/a556
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a556
	allowed_magazines = /obj/item/ammo_magazine/a556
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	one_hand_penalty = 5
	burst_delay = 4
	wielded_item_state = "z8carbine-wielded"
	//would have one_hand_penalty=4,5 but the added weight of a grenade launcher makes one-handing even harder
	firemodes = list(
		list(mode_name="semiauto",       burst=1,    fire_delay=0,    move_delay=null, use_launcher=null, one_hand_penalty=5, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=null, move_delay=6,    use_launcher=null, one_hand_penalty=6, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=null, move_delay=null, use_launcher=1,    one_hand_penalty=5, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0
	var/obj/item/weapon/gun/launcher/grenade/underslung/launcher

/obj/item/weapon/gun/projectile/automatic/z8/New()
	..()
	launcher = new(src)

/obj/item/weapon/gun/projectile/automatic/z8/attackby(obj/item/I, mob/user)
	if((istype(I, /obj/item/weapon/grenade)))
		launcher.load(I, user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/weapon/gun/projectile/automatic/z8/update_icon()
	..()
	if(ammo_magazine)
		if(ammo_magazine.stored_ammo.len)
			icon_state = "carbine-loaded"
		else
			icon_state = "carbine-empty"
	else
		icon_state = "carbine"
	return

/obj/item/weapon/gun/projectile/automatic/z8/examine(mob/user)
	. = ..()
	if(launcher.chambered)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")

/obj/item/weapon/gun/projectile/automatic/l6_saw
	name = "light machine gun"
	desc = "A rather traditionally made L6 SAW with a pleasantly lacquered wooden pistol grip. Has 'Aussec Armoury- 2531' engraved on the reciever." //probably should refluff this
	icon_state = "l6closed100"
	item_state = "l6closedmag"
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = 0
	max_shells = 50
	caliber = "a762"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 1, TECH_ILLEGAL = 2)
	slot_flags = 0 //need sprites for SLOT_BACK
	ammo_type = /obj/item/ammo_casing/a762
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/box/a762
	allowed_magazines = list(/obj/item/ammo_magazine/box/a762, /obj/item/ammo_magazine/c762)
	one_hand_penalty = 6

	//LMG, better sustained fire accuracy than assault rifles (comparable to SMG), higer move delay and one-handing penalty
	//No single-shot or 3-round-burst modes since using this weapon should come at a cost to flexibility.
	firemodes = list(
		list(mode_name="short bursts",	burst=5, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",	burst=8, move_delay=15, one_hand_penalty=9, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = 0

/obj/item/weapon/gun/projectile/automatic/l6_saw/mag
	magazine_type = /obj/item/ammo_magazine/c762

/obj/item/weapon/gun/projectile/automatic/l6_saw/special_check(mob/user)
	if(cover_open)
		to_chat(user, "<span class='warning'>[src]'s cover is open! Close it before firing!</span>")
		return 0
	return ..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	to_chat(user, "<span class='notice'>You [cover_open ? "open" : "close"] [src]'s cover.</span>")
	update_icon()

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
	else
		return ..() //once closed, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
	else
		return ..() //once open, behave like normal

/obj/item/weapon/gun/projectile/automatic/l6_saw/update_icon()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/box))
		icon_state = "l6[cover_open ? "open" : "closed"][round(ammo_magazine.stored_ammo.len, 25)]"
		item_state = "l6[cover_open ? "open" : "closed"]"
	else if(ammo_magazine)
		icon_state = "l6[cover_open ? "open" : "closed"]mag"
		item_state = "l6[cover_open ? "open" : "closed"]mag"
	else
		icon_state = "l6[cover_open ? "open" : "closed"]-empty"
		item_state = "l6[cover_open ? "open" : "closed"]-empty"
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/load_ammo(var/obj/item/A, mob/user)
	if(!cover_open)
		to_chat(user, "<span class='warning'>You need to open the cover to load that into [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/automatic/l6_saw/unload_ammo(mob/user, var/allow_dump=1)
	if(!cover_open)
		to_chat(user, "<span class='warning'>You need to open the cover to unload [src].</span>")
		return
	..()

/obj/item/weapon/gun/projectile/wwi
	icon = 'icons/FoF/weaponsnew.dmi'
	force = 10
	jam_chance = 5
	attack_verb = list("beaten","clubbed","muzzle fucked","freedom rocked","stock bumped","whacked","smacked","slapped","crushed","crunched","bashed","clobbered","struck","busted","thumped","battered","pounded","pummeled","slammed","stabbed")

/obj/item/weapon/gun/projectile/wwi/mg08
	name = "\improper MG 08-15"
	desc = "A lightened and thus more portable version of the original german MG08 heavy machinegun. Supports 50-round drum feed system. Uses 7.92mm ammo."
	icon_state = "mg08"
	item_state = "mg08_w"
	caliber = "a792"
	slot_flags = 0
	fire_sound = 'sound/weapons/Gunshot_light.ogg'
	load_method = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a792 || /obj/item/ammo_casing/a792hp
	magazine_type = /obj/item/ammo_magazine/box/a792
	allowed_magazines = /obj/item/ammo_magazine/box/a792
	one_hand_penalty = -1
	burst_delay = 2
	firemodes = list(
		list(mode_name="short bursts",	burst=5, fire_delay=3, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-2,-2,-3,-3),          dispersion = list(1.3, 1.3, 1.6, 1.6, 1.8)),
		list(mode_name="long bursts",	burst=8, fire_delay=3, move_delay=15, one_hand_penalty=9, burst_accuracy = list(0,-2,-2,-3,-3,-4,-4,-5), dispersion = list(1.3, 1.3, 1.6, 1.6, 1.8, 1.8, 2.0, 2.0)),
		list(mode_name="semi auto",	burst=1, fire_delay=0, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0),          dispersion = list(1)),
		)
	item_icons = list(
		slot_l_hand_str = 'icons/FoF/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/FoF/righthand_guns.dmi',
		)
	w_class = ITEM_SIZE_HUGE
	max_shells = 50
	slowdown_general = 2

/obj/item/weapon/gun/projectile/wwi/mg08/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "mg08"
	else
		icon_state = "mg08_empty"
	return

/obj/item/weapon/gun/projectile/wwi/lewis
	name = "\improper Lewis gun"
	desc = "An offshoot of the British Vickers machine gun, known by its distinctive barrel cooling shroud and top mounted 47-round pan magazine. Uses .303 British ammo."
	icon_state = "lewis"
	item_state = "mg08_w"
	caliber = "a303"
	ammo_type = /obj/item/ammo_casing/a303 || /obj/item/ammo_casing/a303hp
	fire_sound = 'sound/weapons/Gunshot_light.ogg'
	magazine_type = /obj/item/ammo_magazine/box/mp303
	one_hand_penalty = -1
	slot_flags = 0
	load_method = MAGAZINE
	burst_delay = 2
	firemodes = list(
		list(mode_name="short bursts", fire_delay=3,	burst=5, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-2,-2,-3,-3),          dispersion = list(1.3, 1.3, 1.6, 1.6, 1.8)),
		list(mode_name="long bursts", fire_delay=3,	burst=8, move_delay=15, one_hand_penalty=9, burst_accuracy = list(0,-2,-2,-3,-3,-4,-4,-5), dispersion = list(1.3, 1.3, 1.6, 1.6, 1.8, 1.8, 2.0, 2.0)),
		list(mode_name="semi auto", fire_delay=0,	burst=1, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0),          dispersion = list(1)),
		)
	item_icons = list(
		slot_l_hand_str = 'icons/FoF/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/FoF/righthand_guns.dmi',
		)
	w_class = ITEM_SIZE_HUGE
	max_shells = 47
	slowdown_general = 2

/obj/item/weapon/gun/projectile/wwi/lewis/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "lewis"
	else
		icon_state = "lewis_empty"
	return

/obj/item/weapon/gun/projectile/wwi/chauchat
	name = "\improper FM Chauchat"
	desc = "A French light machine gun, known for overheating and frequent failures. Supports 20-round magazine feed system. Uses 8mm ammo."
	icon_state = "chauchat"
	item_state = "chauchat"
	caliber = "8mm"
	ammo_type = /obj/item/ammo_casing/c8mm || /obj/item/ammo_casing/c8mmhp
	fire_sound = 'sound/weapons/Gunshot_light.ogg'
	magazine_type = /obj/item/ammo_magazine/box/c8mm
	one_hand_penalty = 6
	slot_flags = 0
	load_method = MAGAZINE
	jam_chance = 8
	burst_delay = 2
	firemodes = list(
		list(mode_name="3-round bursts", burst=3, fire_delay=6, move_delay=6,    burst_accuracy=list(0,-1,-1),       dispersion=list(1.0, 1.4, 1.4)),
		list(mode_name="short bursts", 	burst=5, fire_delay=6, move_delay=6,    burst_accuracy=list(-2,-2,-3,-3,-4), dispersion=list(1.0, 1.4, 1.4, 1.6, 1.6)),
		list(mode_name="semi auto",	burst=1, fire_delay=0, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0),          dispersion = list(1)),
		)
	item_icons = list(
		slot_l_hand_str = 'icons/FoF/lefthand_guns.dmi',
		slot_r_hand_str = 'icons/FoF/righthand_guns.dmi',
		)
	w_class = ITEM_SIZE_HUGE
	max_shells = 20
	slowdown_general = 1

/obj/item/weapon/gun/projectile/wwi/chauchat/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "chauchat"
	else
		icon_state = "chauchat_empty"
	return

/obj/item/weapon/gun/projectile/wwi/ruby
	name = "\improper Ruby"
	desc = "A cheap Spanish pistol, favoured by the French army for its portability and decent firepower. Uses .32 ACP."
	magazine_type = /obj/item/ammo_magazine/c32acp
	ammo_type = /obj/item/ammo_casing/c32acp || /obj/item/ammo_casing/c32acp
	icon_state = "ruby"
	caliber = ".32"
	fire_sound = 'sound/weapons/ruby.ogg'
	load_method = MAGAZINE
	w_class = ITEM_SIZE_SMALL
	slot_flags = SLOT_BELT

/obj/item/weapon/gun/projectile/wwi/ruby/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ruby"
	else
		icon_state = "ruby_empty"
	return

/obj/item/weapon/gun/projectile/wwi/mauser
	name = "\improper Mauser C96"
	desc = "A Mauser, expensive yet reliable German pistol. Takes 9mm stripper clips."
	magazine_type = /obj/item/ammo_magazine/c9mm
	fire_sound = 'sound/weapons/ruby.ogg'
	icon_state = "c96"
	caliber = "9mm"
	max_shells = 10
	ammo_type = /obj/item/ammo_casing/c9mm || /obj/item/ammo_casing/c9mmhp
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT

/obj/item/weapon/gun/projectile/wwi/mauser/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "c96"
	else
		icon_state = "c96_empty"
	return

/obj/item/weapon/gun/projectile/wwi/p08
	name = "\improper Luger P08"
	desc = "Standard German pistol, used by men who can't afford Mausers. Takes 9mm magazines."
	magazine_type = /obj/item/ammo_magazine/c9mml
	icon_state = "luger"
	caliber = "9mm"
	max_shells = 8
	fire_sound = 'sound/weapons/ruby.ogg'
	load_method = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c9mm || /obj/item/ammo_casing/c9mmhp
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT
	burst_delay = 1
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=0, move_delay=6,    burst_accuracy=list(0),       dispersion=list(0.6)),
		list(mode_name="3 round bursts", burst=3, fire_delay=2, move_delay=6,    burst_accuracy=list(-1,-1,-1),       dispersion=list(0.6,1.2,1.2)),
		list(mode_name="fully automatic", 	burst=8, fire_delay=2, move_delay=6,    burst_accuracy=list(-2,-2,-3,-3,-4,-4,-5,-5), dispersion=list(1.0, 1.4, 1.4, 1.6, 1.6)),
		)

/obj/item/weapon/gun/projectile/wwi/p08/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "luger"
	else
		icon_state = "luger_empty"
	return

/obj/item/weapon/gun/projectile/wwi/bolt
	var/recentbolt = 0
	handle_casings = HOLD_CASINGS
	one_hand_penalty = 6
	accuracy = 1

/obj/item/weapon/gun/projectile/wwi/bolt/consume_next_projectile()
	if(chambered)
		return chambered.BB
	return null

/obj/item/weapon/gun/projectile/wwi/bolt/attack_self(mob/living/user as mob)
	if(world.time >= recentbolt + 10)
		bolt(user)
		recentbolt = world.time

obj/item/weapon/gun/projectile/wwi/bolt/proc/bolt(mob/M as mob)
	playsound(M, 'icons/FoF/sound/weapons/g98_reload1.ogg', 100, 1)
	if(chambered)//We have a shell in the chamber
		chambered.loc = get_turf(src)//Eject casing
		chambered = null
	if(loaded.len)
		var/obj/item/ammo_casing/AC = loaded[1] //load next casing.
		loaded -= AC //Remove casing from loaded list.
		chambered = AC
	update_icon()

/obj/item/weapon/gun/projectile/wwi/bolt/load_from_box(var/obj/item/ammo_box/box,var/mob/user)
	if(box.contents.len == 0 || isnull(box.contents.len))
		to_chat(user,"<span class ='notice'>The [box.name] is empty!</span>")
		return
	if(!(loaded.len <= max_shells))
		to_chat(user,"<span class = 'notice'>The [name] is full!</span>")
		return
	to_chat(user,"<span class ='notice'>You start loading the [name] from the [box.name]</span>")
	for(var/ammo in box.contents)
		if(do_after(user,box.load_time SECONDS,box, same_direction = 1))
			load_ammo(ammo,user)
			continue
		break

	box.update_icon()

/obj/item/weapon/gun/projectile/wwi/bolt/attackby(var/obj/item/W,var/mob/user)
	if(istype(W,/obj/item/ammo_box))
		load_from_box(W,user)
	return ..()

/obj/item/weapon/gun/projectile/wwi/bolt/g98rifle
	name = "\improper G98 rifle"
	desc = "A simple yet reliable German rifle. Supports 7.92mm stripper clips."
	icon_state = "g98"
	item_state = "ba_rifle"
	magazine_type = /obj/item/ammo_magazine/g792
	force = 10
	slot_flags = SLOT_BACK
	caliber = "a792"
	fire_sound = 'sound/weapons/g98.ogg'
	max_shells = 4
	w_class = ITEM_SIZE_HUGE
	ammo_type = /obj/item/ammo_casing/a792 || /obj/item/ammo_casing/a792hp

/obj/item/weapon/gun/projectile/wwi/bolt/g98rifle/scoped
	name = "\improper G98 scoped rifle"
	desc = "A simple yet reliable German rifle with an attached scope. Supports 7.92mm stripper clips."
	icon_state = "g98_scoped"
	accuracy = 2
	scoped_accuracy = 6

/obj/item/weapon/gun/projectile/wwi/bolt/g98rifle/scoped/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	toggle_scope(usr, 1.5)

/obj/item/weapon/gun/projectile/wwi/bolt/lebel
	name = "\improper Lebel"
	desc = "A sturdy old French rifle, able to be used as a club in a pinch. Uses 8mm ammo."
	icon_state = "lebel"
	caliber = "8mm"
	fire_sound = 'sound/weapons/lebel.ogg'
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/c8mm || /obj/item/ammo_casing/c8mmhp
	w_class = ITEM_SIZE_HUGE
	force = 15
	slot_flags = SLOT_BACK

/obj/item/weapon/gun/projectile/wwi/bolt/smle
	name = "\improper Lee-Enfield"
	desc = "The British Army's standard rifle from its official adoption in 1895. Takes 5-round .303 British stripper clips."
	icon_state = "smle"
	slot_flags = SLOT_BACK
	fire_sound = 'sound/weapons/smle.ogg'
	w_class = ITEM_SIZE_HUGE
	max_shells = 5
	caliber = "a303"
	ammo_type = /obj/item/ammo_casing/a303 || /obj/item/ammo_casing/a303hp

/obj/item/weapon/gun/projectile/wwi/bolt/smle/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "smle"
	else
		icon_state = "smle_empty"
	return

/obj/item/weapon/gun/projectile/wwi/bolt/smle/scoped
	name = "\improper Scoped Lee-Enfield"
	desc = "The British Army's standard rifle from its official adoption in 1895. This one has an attached scope. Takes 5-round .303 British stripper clips."
	icon_state = "smle_scoped"
	accuracy = 2
	scoped_accuracy = 6

/obj/item/weapon/gun/projectile/wwi/bolt/smle/scoped/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	toggle_scope(usr, 1.5)

/obj/item/weapon/gun/projectile/wwi/lever
	var/leveruse = 0
	handle_casings = HOLD_CASINGS
	one_hand_penalty = 6

/obj/item/weapon/gun/projectile/wwi/lever/consume_next_projectile()
	if(chambered)
		return chambered.BB
	return null

/obj/item/weapon/gun/projectile/wwi/lever/attack_self(mob/living/user as mob)
	if(world.time >= leveruse + 10)
		lever(user)
		leveruse = world.time

obj/item/weapon/gun/projectile/wwi/lever/proc/lever(mob/M as mob)
	playsound(M, 'icons/FoF/sound/weapons/g98_reload2.ogg', 90, 1)

	if(chambered)//We have a shell in the chamber
		chambered.loc = get_turf(src)//Eject casing
		chambered = null

	if(loaded.len)
		var/obj/item/ammo_casing/AC = loaded[1] //load next casing.
		loaded -= AC //Remove casing from loaded list.
		chambered = AC

	update_icon()

/obj/item/weapon/gun/projectile/wwi/lever/load_from_box(var/obj/item/ammo_box/box,var/mob/user)
	if(box.contents.len == 0 || isnull(box.contents.len))
		to_chat(user,"<span class ='notice'>The [box.name] is empty!</span>")
		return
	if(!(loaded.len <= max_shells))
		to_chat(user,"<span class = 'notice'>The [name] is full!</span>")
		return
	to_chat(user,"<span class ='notice'>You start loading the [name] from the [box.name]</span>")
	for(var/ammo in box.contents)
		if(do_after(user,box.load_time SECONDS,box, same_direction = 1))
			load_ammo(ammo,user)
			continue
		break

	box.update_icon()

/obj/item/weapon/gun/projectile/wwi/lever/winchester
	name = "\improper Winchester Model 1894"
	desc = "An imported American repeating rifle built to be used with smokeless powder. Uses .30-30 Winchester casings."
	icon_state = "winch"
	item_state = "ba_rifle"
	icon = 'icons/FoF/weaponsnew.dmi'
	slot_flags = SLOT_BACK
	caliber = "a3030"
	fire_sound = 'sound/weapons/trenchgun.ogg'
	max_shells = 7
	accuracy = 1
	w_class = ITEM_SIZE_HUGE
	ammo_type = /obj/item/ammo_casing/a3030 || /obj/item/ammo_casing/a3030hp

/obj/item/weapon/gun/projectile/wwi/lever/winchester/attackby(var/obj/item/A as obj, mob/user as mob)
	if(w_class > 3 && (istype(A, /obj/item/weapon/circular_saw)))
		to_chat(user, "<span class='notice'>You begin to shorten \the [src].</span>")
		if(do_after(user, 30, src))
			icon_state = "winch_sawed"
			icon = 'icons/FoF/weaponsnew.dmi'
			item_state = "ba_rifle"
			w_class = ITEM_SIZE_NORMAL
			force = 5
			one_hand_penalty = 0
			accuracy = -2
			max_shells = 4
			slot_flags &= ~SLOT_BACK	//you can't sling it on your back
			slot_flags |= (SLOT_BELT|SLOT_HOLSTER) //but you can wear it on your belt (poorly concealed under a trenchcoat, ideally) - or in a holster, why not.
			name = "shortened Winchester Model 1894"
			desc = "Someone cut this rifle down for an easier time carrying it."
			to_chat(user, "<span class='warning'>You create \a [src]! Congrats.</span>")
	else
		..()

/obj/item/weapon/gun/projectile/wwi/lever/winchester/sawn
	name = "shortened Winchester Model 1894"
	desc = "Someone cut this rifle down for an easier time carrying it."
	icon_state = "winch_sawed"
	item_state = "ba_rifle"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	ammo_type = /obj/item/ammo_casing/a3030
	w_class = ITEM_SIZE_NORMAL
	force = 5
	max_shells = 4
	accuracy = -2
	one_hand_penalty = 0

/obj/item/weapon/gun/projectile/wwi/colt1911
	name = "\improper Colt M1911"
	desc = "An imported American made handgun with a heavy punch and high recoil. Takes .45 ACP magazines."
	magazine_type = /obj/item/ammo_magazine/a45
	fire_sound = 'sound/weapons/webley.ogg'
	icon_state = "colt"
	caliber = "45"
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/a45 || /obj/item/ammo_casing/a45hp
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT
	load_method = MAGAZINE
	screen_shake = 0.2

/obj/item/weapon/gun/projectile/wwi/colt1911/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "colt"
	else
		icon_state = "colt_empty"
	return
