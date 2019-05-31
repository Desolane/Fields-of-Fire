/obj/item/weapon/bayonet
	name = "bayonet"
	desc = "Cut, cut, and once more cut."
	icon = 'icons/obj/weapons.dmi'
	icon_state = "bayonet"
	flags = CONDUCT
	force = 20.0
	sharp = 1
	edge = 1
	w_class = 2
	slot_flags = SLOT_MASK|SLOT_BELT
	throwforce = 5.0
	throw_speed = 3
	throw_range = 5
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")

/obj/item/weapon/gun/projectile/shotgun/pump/trenchgun
	name = "trenchgun"
	desc = "Useful for sweeping trenches."
	icon_state = "trenchgun"
	item_state = "shotgun"
	origin_tech = "combat=5;materials=2"
	two_handed = 1
	fire_sound = 'sound/weapons/trenchgun.ogg'
	max_shells = 7 //match the ammo box capacity, also it can hold a round in the chamber anyways, for a total of 8.
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	bayonet = 1

/obj/item/weapon/gun/projectile/automatic/wwi_mg
	name = "\improper MG 08-15"
	desc = "A lightened and thus more portable version of the original german MG 08 heavy machinegun. Supports 100-round drum feed system. Uses 7.92mm ammo."
	icon_state = "mg08"
	item_state = "mg08"
	w_class = 4
	two_handed = 1
	caliber = "7.92mm"
	origin_tech = "combat=5;materials=2"
	slot_flags = 0
	ammo_type = "/obj/item/ammo_casing/a792"
	fire_sound = 'sound/weapons/Gunshot_light.ogg'
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/md792
	firemodes = list(list(name="full auto", burst=2, move_delay=4, accuracy = list(0,-1,-1,-2,-2), dispersion = list(0.0, 0.6)))

/obj/item/weapon/gun/projectile/automatic/wwi_mg/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "[initial(icon_state)]"
	else
		icon_state = "[initial(icon_state)]empty"
	return

/obj/item/weapon/gun/projectile/automatic/wwi_mg/lewis
	name = "\improper Lewis gun"
	desc = "A british light machine gun, known by its distinctive barrel cooling shroud and top mounted 47-round pan magazine. Uses .303 British ammo."
	icon_state = "lewis"
	item_state = "lewis"
	caliber = "303"
	ammo_type = "/obj/item/ammo_casing/a303"
	fire_sound = 'sound/weapons/Gunshot_light.ogg'
	magazine_type = /obj/item/ammo_magazine/mp303

/obj/item/weapon/gun/projectile/automatic/wwi_mg/chauchat
	name = "\improper FM Chauchat"
	desc = "A french light machine gun, known for overheating and frequent failures. Supports 20-round magazine feed system. Uses 8mm ammo."
	icon_state = "chauchat"
	item_state = "chauchat"
	caliber = "8mm"
	ammo_type = "/obj/item/ammo_casing/c8mm"
	fire_sound = 'sound/weapons/Gunshot_light.ogg'
	magazine_type = /obj/item/ammo_magazine/mm8
	firemodes = list()

/obj/item/weapon/gun/projectile/ruby
	name = "\improper Ruby"
	desc = "A cheap spanish pistol, favoured by french army for its portability and decent firepower."
	magazine_type = /obj/item/ammo_magazine/c32m
	icon_state = "ruby"
	caliber = ".32"
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/weapons/ruby.ogg'
	load_method = MAGAZINE

/obj/item/weapon/gun/projectile/ruby/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ruby"
	else
		icon_state = "rubyempty"
	return

/obj/item/weapon/gun/projectile/mauser
	name = "\improper Mauser C96"
	desc = "A good old comrade Mauser, expensive yet effective german pistol."
	fire_sound = 'sound/weapons/ruby.ogg'
	icon_state = "mauser"
	caliber = "9mm"
	origin_tech = "combat=2;materials=2"
	max_shells = 10
	ammo_type = /obj/item/ammo_casing/c9mm

/obj/item/weapon/gun/projectile/p08
	name = "\improper Luger P08"
	desc = "Standard german pistol, used by officers who can't afford Mauser."
	magazine_type = /obj/item/ammo_magazine/mc9mm
	icon_state = "p08"
	caliber = "9mm"
	origin_tech = "combat=2;materials=2"
	fire_sound = 'sound/weapons/ruby.ogg'
	load_method = MAGAZINE

/obj/item/weapon/gun/projectile/p08/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "p08"
	else
		icon_state = "p08empty"
	return

/obj/item/weapon/gun/projectile/webley
	name = "Webley"
	desc = "A classic british revolver, prioritised by british officers."
	fire_sound = 'sound/weapons/webley.ogg'
	icon_state = "webley"
	item_state = "revolver"
	caliber = "455"
	origin_tech = "combat=2;materials=2"
	handle_casings = CYCLE_CASINGS
	max_shells = 6
	ammo_type = /obj/item/ammo_casing/a455

/obj/item/weapon/gun/projectile/ba_rifle
	name = "\improper G98 rifle"
	desc = "A simple yet effective german rifle. Supports 7.92mm 5-round stripper clips."
	icon_state = "g98"
	item_state = "ba_rifle"
	w_class = 4
	two_handed = 1
	force = 10
	slot_flags = SLOT_BACK
	origin_tech = "combat=8;materials=2;syndicate=8"
	caliber = "7.92mm"
	fire_sound = 'sound/weapons/g98.ogg'
	handle_casings = HOLD_CASINGS
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 5
	accuracy = 1
	ammo_type = /obj/item/ammo_casing/a792
	var/bolt_open = 0
	var/recentbolt = 0
	bayonet = 1

obj/item/weapon/gun/projectile/verb/DetachBayonet(mob/user as mob)
	if (bayonet)
		set name = "Detach bayonet"
		if (bayonet_affixed)
			bayonet_affixed = 0
			update_bayonet_icon()
			new /obj/item/weapon/bayonet(user.loc)
			user << "<span class='notice'>You detach the bayonet.</span>"
			force = initial(force)
			attack_verb = list("struck", "hit", "bashed")
		else
			user << "<span class='notice'>You don't have a bayonet attached.</span>"
			return

/obj/item/weapon/gun/projectile/attackby(obj/item/weapon/K as obj, mob/user as mob)
	..()
	if(istype(K, /obj/item/weapon/bayonet))
		if(bayonet)
			if(bayonet_affixed)
				user << "<span class='warning'>[src] already has a bayonet attached!</span>"
				return
			else
				user << "<span class='notice'>You fix the bayonet onto [src]."
				bayonet_affixed = 1
				update_bayonet_icon()
				force = 25.0
				attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
				qdel(K)
				return
		else
			user << "<span class='warning'>You can't attach a bayonet to this gun!</span>"

obj/item/weapon/gun/projectile/proc/update_bayonet_icon()
	if(load_method != MAGAZINE)
		if(bayonet_affixed)
			icon_state = "[initial(icon_state)]_b"
		else
			icon_state = "[initial(icon_state)]"
	else
		if(bayonet_affixed && ammo_magazine)
			icon_state = "[initial(icon_state)]_b"
		else if(ammo_magazine)
			icon_state = "[initial(icon_state)]"
		else if(bayonet_affixed)
			icon_state = "[initial(icon_state)]empty_b"
		else
			icon_state = "[initial(icon_state)]empty"
	return

/obj/item/weapon/gun/projectile/ba_rifle/consume_next_projectile()
	if(chambered)
		return chambered.BB
	return null

/obj/item/weapon/gun/projectile/ba_rifle/proc/bolt_action(mob/user as mob)
	if(recentbolt)
		return

	bolt_open = !bolt_open
	recentbolt = 1
	if(bolt_open)
		playsound(src.loc, 'sound/weapons/g98_reload1.ogg', 50, 1)
		if(chambered)
			user << "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>"
			chambered.loc = get_turf(src)
			chambered = null
		else
			user << "<span class='notice'>You work the bolt open.</span>"
	else
		playsound(src.loc, 'sound/weapons/g98_reload2.ogg', 50, 1)
		user << "<span class='notice'>You work the bolt closed.</span>"
		if(loaded.len)
			var/obj/item/ammo_casing/AC = loaded[1]
			loaded -= AC
			chambered = AC
		bolt_open = 0
	spawn(5)
		recentbolt = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/ba_rifle/special_check(mob/user)
	if(bolt_open)
		user << "<span class='warning'>You can't fire [src] while the bolt is open!</span>"
		return 0
	return ..()

/obj/item/weapon/gun/projectile/ba_rifle/load_ammo(var/obj/item/A, mob/user)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/ba_rifle/unload_ammo(mob/user, var/allow_dump=1)
	if(!bolt_open)
		return
	..()

/obj/item/weapon/gun/projectile/ba_rifle/g98sniper
	name = "\improper G98 scoped rifle"
	desc = "A simple yet effective german five-shot rifle fitted with a scope. Supports 7.92mm 5-round stripper clips."
	icon_state = "g98sniper"
	accuracy = 2
	bayonet = 0

/obj/item/weapon/gun/projectile/ba_rifle/g98sniper/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	toggle_scope(2.0)


/obj/item/weapon/gun/projectile/ba_rifle/lebel
	name = "\improper Lebel rifle"
	desc = "An old french rifle with tubular magazine, which can hold up to 8 cartriges. Uses 8mm ammo."
	icon_state = "lebel"
	caliber = "8mm"
	fire_sound = 'sound/weapons/lebel.ogg'
	load_method = SINGLE_CASING
	max_shells = 8
	ammo_type = /obj/item/ammo_casing/c8mm

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


/obj/item/weapon/gun/projectile/smle
	name = "\improper SMLE rifle"
	desc = "Short Magazine Lee-Enfield - one of the newest british weaponries with detachable magazine, which can hold up to 10 cartriges. Supports .303 British 5-round stripper clips."
	icon_state = "smle"
	item_state = "ba_rifle"
	w_class = 4
	two_handed = 1
	force = 10
	accuracy = 1
	slot_flags = SLOT_BACK
	origin_tech = "combat=8;materials=2;syndicate=8"
	caliber = "303"
	fire_sound = 'sound/weapons/smle.ogg'
	handle_casings = HOLD_CASINGS
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/a303
	var/bolt_open = 0
	var/recentbolt = 0
	bayonet = 1

/obj/item/weapon/gun/projectile/smle/consume_next_projectile()
	if(chambered)
		return chambered.BB
	return null

/obj/item/weapon/gun/projectile/smle/attackby(obj/item/W as obj, mob/user as mob)
	if(istype(W, /obj/item/ammo_casing))
		if(!bolt_open)
			return
		if(!ammo_magazine)
			return
		var/obj/item/ammo_casing/C = W
		if(C.caliber != caliber)
			user << "<span class='warning'>[C] does not fit into [src].</span>"
			return
		if(ammo_magazine.stored_ammo.len >= ammo_magazine.max_ammo)
			user << "<span class='warning'>[src] is full!</span>"
			return
		C.loc = src
		ammo_magazine.stored_ammo.Insert(1, C)
		user.visible_message("[user] inserts \a [C] into [src].", "<span class='notice'>You insert \a [C] into [src].</span>")
		playsound(src.loc, 'sound/weapons/empty.ogg', 50, 1)
		user.remove_from_mob(C)
	if(istype(W, /obj/item/ammo_magazine))
		var/obj/item/ammo_magazine/AM = W
		if(!AM.mag_type || caliber != AM.caliber)
			return
		if(ammo_magazine)
			user << "<span class='warning'>[src] already has a magazine loaded.</span>"
			return
		user.remove_from_mob(AM)
		AM.loc = src
		ammo_magazine = AM
		user.visible_message("[user] inserts [AM] into [src].", "<span class='notice'>You insert [AM] into [src].</span>")
		playsound(src.loc, 'sound/weapons/flipblade.ogg', 50, 1)
		update_icon()
	if(istype(W, /obj/item/weapon/bayonet))
		if(bayonet)
			if(bayonet_affixed)
				user << "<span class='warning'>[src] already has a bayonet attached!</span>"
				return
			else
				user << "<span class='notice'>You fix the bayonet onto [src]."
				bayonet_affixed = 1
				update_bayonet_icon()
				force = 25.0
				attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
				del(W)
				return
		else
			user << "<span class='warning'>You can't attach a bayonet to this gun!</span>"

/obj/item/weapon/gun/projectile/smle/proc/smle_bolt_action(mob/user as mob)
	if(recentbolt)
		return

	bolt_open = !bolt_open
	recentbolt = 1
	if(bolt_open)
		playsound(src.loc, 'sound/weapons/smle_reload1.ogg', 50, 1)
		if(chambered)
			user << "<span class='notice'>You work the bolt open, ejecting [chambered]!</span>"
			chambered.loc = get_turf(src)
			chambered = null
		else
			user << "<span class='notice'>You work the bolt open.</span>"
	else
		playsound(src.loc, 'sound/weapons/smle_reload2.ogg', 50, 1)
		user << "<span class='notice'>You work the bolt closed.</span>"
		if(ammo_magazine.stored_ammo.len)
			var/obj/item/ammo_casing/AC = ammo_magazine.stored_ammo[1]
			ammo_magazine.stored_ammo -= AC
			chambered = AC
		bolt_open = 0
	spawn(5)
		recentbolt = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/smle/special_check(mob/user)
	if(bolt_open)
		user << "<span class='warning'>You can't fire [src] while the bolt is open!</span>"
		return 0
	return ..()

/obj/item/weapon/gun/projectile/smle/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "smle"
	else
		icon_state = "smleempty"
	return

/obj/item/weapon/gun/projectile/smle/sniper
	name = "\improper SMLE scoped rifle"
	desc = "Short Magazine Lee-Enfield - one of the newest british weaponries with detachable magazine, which can hold up to 10 cartriges, now fitted with a scope. Supports .303 British 5-round stripper clips."
	icon_state = "smlesniper"
	accuracy = 2
	bayonet = 0

/obj/item/weapon/gun/projectile/smle/sniper/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "smlesniper"
	else
		icon_state = "smlesniperempty"
	return

/obj/item/weapon/gun/projectile/smle/sniper/verb/scope()
	set category = "Object"
	set name = "Use Scope"
	set popup_menu = 1

	toggle_scope(2.0)