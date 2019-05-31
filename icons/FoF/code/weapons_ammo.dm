
// FIREARMS	//

/obj/item/weapon/gun/projectile/wwi
	icon = 'icons/FoF/munitionsx32.dmi'
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

//	AMMUNITION	//

/obj/item/ammo_magazine/box/a792
	name = "7.92mm box magazine"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "mg08mag"
	mag_type = MAGAZINE
	caliber = "a792"
	matter = list(DEFAULT_WALL_MATERIAL = 12500)
	ammo_type = /obj/item/ammo_casing/a792
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/box/a792/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/mp303
	name = ".303 British drum magazine"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "lewismag"
	mag_type = MAGAZINE
	caliber = "a303"
	matter = list(DEFAULT_WALL_MATERIAL = 7500)
	ammo_type = /obj/item/ammo_casing/a303
	max_ammo = 47
	multiple_sprites = 1

/obj/item/ammo_magazine/box/mp303/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/c8mm
	name = "8mm box magazine"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "chauchatmag"
	mag_type = MAGAZINE
	caliber = "8mm"
	matter = list(DEFAULT_WALL_MATERIAL = 7500)
	ammo_type = /obj/item/ammo_casing/c8mm
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/box/c8mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c32acp
	name = ".32 ACP magazine"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "rubymag"
	mag_type = MAGAZINE
	caliber = ".32"
	max_ammo = 9
	matter = list(DEFAULT_WALL_MATERIAL = 540)
	ammo_type = /obj/item/ammo_casing/c32acp
	multiple_sprites = 1

/obj/item/ammo_magazine/c32acp/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c9mm
	name = "9mm stripper clip"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "c96clip"
	caliber = "9mm"
	max_ammo = 10
	matter = list(DEFAULT_WALL_MATERIAL = 600)
	ammo_type = /obj/item/ammo_casing/c9mm
	multiple_sprites = 1

obj/item/ammo_magazine/c9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c9mml
	name = "9mm magazine"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "p08mag"
	mag_type = MAGAZINE
	caliber = "9mm"
	max_ammo = 8
	matter = list(DEFAULT_WALL_MATERIAL = 480)
	ammo_type = /obj/item/ammo_casing/c9mm
	multiple_sprites = 1

/obj/item/ammo_magazine/c9mml/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a445
	name = "speed loader (.455)"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "webleymag"
	caliber = "455"
	ammo_type = /obj/item/ammo_casing/a455
	matter = list(DEFAULT_WALL_MATERIAL = 1500)
	max_ammo = 6
	multiple_sprites = 1
	desc = "A speedloader for quickly loading the Webley."

/obj/item/ammo_magazine/a445/empty
	initial_ammo = 0

/obj/item/ammo_magazine/g792
	name = "7.92mm stripper clip"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "stripclip"
	caliber = "a792"
	ammo_type = /obj/item/ammo_casing/a792
	matter = list(DEFAULT_WALL_MATERIAL = 1250)
	max_ammo = 5
	multiple_sprites = 1

/obj/item/ammo_magazine/g792/empty
	initial_ammo = 0

/obj/item/ammo_magazine/smle_strip
	name = ".303 stripper clip"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "stripclip"
	caliber = "a303"
	ammo_type = /obj/item/ammo_casing/a303
	matter = list(DEFAULT_WALL_MATERIAL = 1250)
	max_ammo = 5
	multiple_sprites = 1

/obj/item/ammo_magazine/smle_strip/empty
	initial_ammo = 0

/obj/item/ammo_magazine/smle_mag
	name = "SMLE magazine"
	icon = 'icons/FoF/munitionsx32.dmi'
	icon_state = "smlemag"
	caliber = "a303"
	ammo_type = /obj/item/ammo_casing/a303
	matter = list(DEFAULT_WALL_MATERIAL = 1250)
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/smle_mag/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a45
	name = ".45 ACP magazine"
	icon_state = "coltmag"
	icon = 'icons/FoF/munitionsx32.dmi'
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a45
	matter = list(DEFAULT_WALL_MATERIAL = 525)
	caliber = "45"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/a45/empty
	initial_ammo = 0