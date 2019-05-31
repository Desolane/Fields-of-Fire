/obj/item/ammo_magazine/a357
	//name = "ammo box (.357)"
	//desc = "A box of .357 ammo"
	//icon_state = "357"
	name = "speed loader (.357)"
	icon_state = "38"
	caliber = "357"
	ammo_type = /obj/item/ammo_casing/a357
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c38
	name = "speed loader (.38)"
	icon_state = "38"
	caliber = "38"
	matter = list(DEFAULT_WALL_MATERIAL = 360)
	ammo_type = /obj/item/ammo_casing/c38
	max_ammo = 6
	multiple_sprites = 1

/obj/item/ammo_magazine/c38/rubber
	name = "speed loader (.38 rubber)"
	ammo_type = /obj/item/ammo_casing/c38/rubber

/obj/item/ammo_magazine/c45m
	name = "magazine (.45)"
	icon_state = "45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c45
	matter = list(DEFAULT_WALL_MATERIAL = 525) //metal costs are very roughly based around 1 .45 casing = 75 metal
	caliber = ".45"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/c45m/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c45m/rubber
	name = "magazine (.45 rubber)"
	ammo_type = /obj/item/ammo_casing/c45/rubber

/obj/item/ammo_magazine/c45m/practice
	name = "magazine (.45 practice)"
	ammo_type = /obj/item/ammo_casing/c45/practice

/obj/item/ammo_magazine/c45m/flash
	name = "magazine (.45 flash)"
	ammo_type = /obj/item/ammo_casing/c45/flash

/obj/item/ammo_magazine/c45uzi
	name = "stick magazine (.45)"
	icon_state = "uzi45"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c45
	matter = list(DEFAULT_WALL_MATERIAL = 1200)
	caliber = ".45"
	max_ammo = 16
	multiple_sprites = 1

/obj/item/ammo_magazine/c45uzi/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mm
	name = "magazine (9mm)"
	icon_state = "9x19p"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	matter = list(DEFAULT_WALL_MATERIAL = 600)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 10
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mm/flash
	name = "magazine (9mm flash)"
	ammo_type = /obj/item/ammo_casing/c9mm/flash

/obj/item/ammo_magazine/box/c9mm
	name = "ammunition box (9mm)"
	icon_state = "9mm"
	origin_tech = list(TECH_COMBAT = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	caliber = "9mm"
	ammo_type = /obj/item/ammo_casing/c9mm
	max_ammo = 30

/obj/item/ammo_magazine/box/c9mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/emp
	name = "ammunition box (.38 haywire)"
	icon_state = "empbox"
	origin_tech = list(TECH_COMBAT = 2)
	max_ammo = 10
	ammo_type = /obj/item/ammo_casing/c38/emp
	caliber = ".38"

/obj/item/ammo_magazine/box/emp/c45
	name = "ammunition box (.45 haywire)"
	ammo_type = /obj/item/ammo_casing/c45/emp
	caliber = ".45"

/obj/item/ammo_magazine/box/emp/a10mm
	name = "ammunition box (10mm haywire)"
	ammo_type = /obj/item/ammo_casing/a10mm/emp
	caliber = "10mm"

/obj/item/ammo_magazine/mc9mmt
	name = "top mounted magazine (9mm)"
	icon_state = "9mmt"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/c9mm
	matter = list(DEFAULT_WALL_MATERIAL = 1200)
	caliber = "9mm"
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/mc9mmt/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mc9mmt/rubber
	name = "top mounted magazine (9mm rubber)"
	ammo_type = /obj/item/ammo_casing/c9mm/rubber

/obj/item/ammo_magazine/mc9mmt/practice
	name = "top mounted magazine (9mm practice)"
	ammo_type = /obj/item/ammo_casing/c9mm/practice

/obj/item/ammo_magazine/box/c45
	name = "ammunition box (.45)"
	icon_state = "9mm"
	origin_tech = list(TECH_COMBAT = 2)
	caliber = ".45"
	matter = list(DEFAULT_WALL_MATERIAL = 2250)
	ammo_type = /obj/item/ammo_casing/c45
	max_ammo = 30

/obj/item/ammo_magazine/box/c45/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a10mm
	name = "magazine (10mm)"
	icon_state = "10mm"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "10mm"
	matter = list(DEFAULT_WALL_MATERIAL = 1500)
	ammo_type = /obj/item/ammo_casing/a10mm
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/a10mm/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a556
	name = "magazine (5.56mm)"
	icon_state = "5.56"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "a556"
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	ammo_type = /obj/item/ammo_casing/a556
	max_ammo = 15 //if we lived in a world where normal mags had 30 rounds, this would be a 20 round mag
	multiple_sprites = 1

/obj/item/ammo_magazine/a556/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a556/practice
	name = "magazine (5.56mm practice)"
	ammo_type = /obj/item/ammo_casing/a556/practice

/obj/item/ammo_magazine/a50
	name = "magazine (.50)"
	icon_state = "50ae"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".50"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/a50
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/a50/empty
	initial_ammo = 0

/obj/item/ammo_magazine/a75
	name = "ammo magazine (20mm)"
	icon_state = "75"
	mag_type = MAGAZINE
	caliber = "75"
	ammo_type = /obj/item/ammo_casing/a75
	multiple_sprites = 1
	max_ammo = 4

/obj/item/ammo_magazine/a75/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/a762
	name = "magazine box (7.62mm)"
	icon_state = "a762"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "a762"
	matter = list(DEFAULT_WALL_MATERIAL = 4500)
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/box/a762/empty
	initial_ammo = 0

/obj/item/ammo_magazine/c762
	name = "magazine (7.62mm)"
	icon_state = "c762"
	mag_type = MAGAZINE
	caliber = "a762"
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	ammo_type = /obj/item/ammo_casing/a762
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/caps
	name = "speed loader (caps)"
	icon_state = "T38"
	caliber = "caps"
	color = "#FF0000"
	ammo_type = /obj/item/ammo_casing/cap
	matter = list(DEFAULT_WALL_MATERIAL = 600)
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/box/a792
	name = "7.92mm box magazine"
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
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
	icon = 'icons/FoF/munitions.dmi'
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/a45
	matter = list(DEFAULT_WALL_MATERIAL = 525)
	caliber = "45"
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/a45/empty
	initial_ammo = 0