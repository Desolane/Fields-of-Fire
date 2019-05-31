/obj/item/ammo_casing/a357
	desc = "A .357 bullet casing."
	caliber = "357"
	projectile_type = /obj/item/projectile/bullet/pistol/strong

/obj/item/ammo_casing/a50
	desc = "A .50AE bullet casing."
	caliber = ".50"
	projectile_type = /obj/item/projectile/bullet/pistol/strong

/obj/item/ammo_casing/a75
	desc = "A 20mm bullet casing."
	caliber = "75"
	projectile_type = /obj/item/projectile/bullet/gyro

/obj/item/ammo_casing/c38
	desc = "A .38 bullet casing."
	caliber = "38"
	projectile_type = /obj/item/projectile/bullet/pistol

/obj/item/ammo_casing/c38/rubber
	desc = "A .38 rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "r-casing"
	spent_icon = "r-casing-spent"

/obj/item/ammo_casing/c9mm
	desc = "A 9mm bullet casing."
	caliber = "9mm"
	projectile_type = /obj/item/projectile/bullet/pistol

/obj/item/ammo_casing/c9mm/flash
	desc = "A 9mm flash shell casing."
	projectile_type = /obj/item/projectile/energy/flash

/obj/item/ammo_casing/c9mm/rubber
	desc = "A 9mm rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "r-casing"
	spent_icon = "r-casing-spent"

/obj/item/ammo_casing/c9mm/practice
	desc = "A 9mm practice bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/practice


/obj/item/ammo_casing/c45
	desc = "A .45 bullet casing."
	caliber = ".45"
	projectile_type = /obj/item/projectile/bullet/pistol/medium

/obj/item/ammo_casing/c45/practice
	desc = "A .45 practice bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/practice

/obj/item/ammo_casing/c45/rubber
	desc = "A .45 rubber bullet casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "r-casing"
	spent_icon = "r-casing-spent"

/obj/item/ammo_casing/c45/flash
	desc = "A .45 flash shell casing."
	projectile_type = /obj/item/projectile/energy/flash

/obj/item/ammo_casing/a10mm
	desc = "A 10mm bullet casing."
	caliber = "10mm"
	projectile_type = /obj/item/projectile/bullet/pistol/medium/smg


/obj/item/ammo_casing/shotgun
	name = "shotgun slug"
	desc = "A 12 gauge slug."
	icon_state = "slshell"
	spent_icon = "slshell-spent"
	caliber = "shotgun"
	projectile_type = /obj/item/projectile/bullet/shotgun
	matter = list(DEFAULT_WALL_MATERIAL = 360)

/obj/item/ammo_casing/shotgun/trench
	name = "shotgun shell"
	desc = "A dirty shotgun shell."
	icon_state = "shotgunshell"
	icon = 'icons/FoF/munitions.dmi'
	spent_icon = "spent_shotgunshell"
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun
	matter = list(DEFAULT_WALL_MATERIAL = 360)
	caliber = "shotgun"
	randpixel = 8

/obj/item/ammo_casing/shotgun/pellet
	name = "shotgun shell"
	desc = "A 12 gauge shell."
	icon_state = "gshell"
	spent_icon = "gshell-spent"
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun
	matter = list(DEFAULT_WALL_MATERIAL = 360)

/obj/item/ammo_casing/shotgun/blank
	name = "shotgun shell"
	desc = "A blank shell."
	icon_state = "blshell"
	spent_icon = "blshell-spent"
	projectile_type = /obj/item/projectile/bullet/blank
	matter = list(DEFAULT_WALL_MATERIAL = 90)

/obj/item/ammo_casing/shotgun/practice
	name = "shotgun shell"
	desc = "A practice shell."
	icon_state = "pshell"
	spent_icon = "pshell-spent"
	projectile_type = /obj/item/projectile/bullet/shotgun/practice
	matter = list("metal" = 90)

/obj/item/ammo_casing/shotgun/beanbag
	name = "beanbag shell"
	desc = "A beanbag shell."
	icon_state = "bshell"
	spent_icon = "bshell-spent"
	projectile_type = /obj/item/projectile/bullet/shotgun/beanbag
	matter = list(DEFAULT_WALL_MATERIAL = 180)

//Can stun in one hit if aimed at the head, but
//is blocked by clothing that stops tasers and is vulnerable to EMP
/obj/item/ammo_casing/shotgun/stunshell
	name = "stun shell"
	desc = "A 12 gauge taser cartridge."
	icon_state = "stunshell"
	spent_icon = "stunshell-spent"
	projectile_type = /obj/item/projectile/energy/electrode/stunshot
	leaves_residue = 0
	matter = list(DEFAULT_WALL_MATERIAL = 360, "glass" = 720)

/obj/item/ammo_casing/shotgun/stunshell/emp_act(severity)
	if(prob(100/severity)) BB = null
	update_icon()

//Does not stun, only blinds, but has area of effect.
/obj/item/ammo_casing/shotgun/flash
	name = "flash shell"
	desc = "A chemical shell used to signal distress or provide illumination."
	icon_state = "fshell"
	spent_icon = "fshell-spent"
	projectile_type = /obj/item/projectile/energy/flash/flare
	matter = list(DEFAULT_WALL_MATERIAL = 90, "glass" = 90)

/obj/item/ammo_casing/a762
	desc = "A 7.62mm bullet casing."
	caliber = "a762"
	projectile_type = /obj/item/projectile/bullet/rifle/a762
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/a145
	name = "shell casing"
	desc = "A 14.5mm shell."
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"
	caliber = "14.5mm"
	projectile_type = /obj/item/projectile/bullet/rifle/a145
	matter = list(DEFAULT_WALL_MATERIAL = 1250)

/obj/item/ammo_casing/a556
	desc = "A 5.56mm bullet casing."
	caliber = "a556"
	projectile_type = /obj/item/projectile/bullet/rifle/a556
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/a556/practice
	desc = "A 5.56mm practice bullet casing."
	projectile_type = /obj/item/projectile/bullet/rifle/a556/practice

/obj/item/ammo_casing/rocket
	name = "rocket shell"
	desc = "A high explosive designed to be fired from a launcher."
	icon_state = "rocketshell"
	projectile_type = /obj/item/missile
	caliber = "rocket"

/obj/item/ammo_casing/cap
	name = "cap"
	desc = "A cap for children toys."
	caliber = "caps"
	color = "#FF0000"
	projectile_type = /obj/item/projectile/bullet/pistol/cap

// EMP ammo.
/obj/item/ammo_casing/c38/emp
	name = ".38 haywire round"
	desc = "A .38 bullet casing fitted with a single-use ion pulse generator."
	icon_state = "empcasing"
	projectile_type = /obj/item/projectile/ion/small
	matter = list(DEFAULT_WALL_MATERIAL = 130, "uranium" = 100)

/obj/item/ammo_casing/c45/emp
	name = ".45 haywire round"
	desc = "A .45 bullet casing fitted with a single-use ion pulse generator."
	projectile_type = /obj/item/projectile/ion/small
	icon_state = "empcasing"
	matter = list(DEFAULT_WALL_MATERIAL = 130, "uranium" = 100)

/obj/item/ammo_casing/a10mm/emp
	name = "10mm haywire round"
	desc = "A 10mm bullet casing fitted with a single-use ion pulse generator."
	projectile_type = /obj/item/projectile/ion/small
	icon_state = "empcasing"
	matter = list(DEFAULT_WALL_MATERIAL = 130, "uranium" = 100)

/obj/item/ammo_casing/shotgun/emp
	name = "haywire slug"
	desc = "A 12-gauge shotgun slug fitted with a single-use ion pulse generator."
	icon_state = "empshell"
	spent_icon = "empshell-spent"
	projectile_type  = /obj/item/projectile/ion
	matter = list(DEFAULT_WALL_MATERIAL = 260, "uranium" = 200)

/obj/item/ammo_casing/a792
	desc = "A 7.92mm casing."
	caliber = "a792"
	projectile_type = /obj/item/projectile/bullet/rifle/a792
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "looseriflerounds_1"
	spent_icon = "rifle-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 250)
	randpixel = 8

/obj/item/ammo_casing/a792hp
	desc = "A 7.92mm casing. This one looks altered."
	caliber = "a792"
	projectile_type = /obj/item/projectile/bullet/rifle/a792/hp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "looseriflerounds_1"
	spent_icon = "rifle-casing-spent"
	randpixel = 8
	matter = list(DEFAULT_WALL_MATERIAL = 250)

/obj/item/ammo_casing/a303
	desc = "A .303 British casing."
	caliber = "a303"
	projectile_type = /obj/item/projectile/bullet/rifle/a303
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "looseriflerounds_1"
	spent_icon = "rifle-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 250)
	randpixel = 8

/obj/item/ammo_casing/a303hp
	desc = "A .303 British casing. This one looks altered."
	caliber = "a303"
	projectile_type = /obj/item/projectile/bullet/rifle/a303/hp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "looseriflerounds_1"
	spent_icon = "rifle-casing-spent"
	randpixel = 8
	matter = list(DEFAULT_WALL_MATERIAL = 250)

/obj/item/ammo_casing/c8mm
	desc = "An 8mm casing."
	caliber = "8mm"
	projectile_type = /obj/item/projectile/bullet/rifle/c8mm
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "looseriflerounds_1"
	spent_icon = "rifle-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 250)
	randpixel = 8

/obj/item/ammo_casing/c8mmhp
	desc = "An 8mm casing. This one looks altered."
	caliber = "8mm"
	projectile_type = /obj/item/projectile/bullet/rifle/c8mm/hp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "looseriflerounds_1"
	spent_icon = "rifle-casing-spent"
	randpixel = 8
	matter = list(DEFAULT_WALL_MATERIAL = 250)

/obj/item/ammo_casing/c32acp
	desc = "A .32 ACP casing."
	caliber = ".32"
	projectile_type = /obj/item/projectile/bullet/pistol/c32acp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "pbullet"
	spent_icon = "r-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 60)

/obj/item/ammo_casing/c32acphp
	desc = "A .32 ACP casing. This one looks altered."
	caliber = ".32"
	projectile_type = /obj/item/projectile/bullet/pistol/c32acp/hp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "pbullet"
	spent_icon = "r-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 60)

/obj/item/ammo_casing/c9mm
	desc = "A 9mm casing."
	caliber = "9mm"
	projectile_type = /obj/item/projectile/bullet/pistol/c9mm
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "pbullet"
	spent_icon = "r-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 60)
	randpixel = 8

/obj/item/ammo_casing/c9mmhp
	desc = "A 9mm casing. This one looks altered."
	caliber = "9mm"
	projectile_type = /obj/item/projectile/bullet/pistol/c9mm/hp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "pbullet"
	spent_icon = "r-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 60)
	randpixel = 8

/obj/item/ammo_casing/a455
	desc = "A .455 casing."
	caliber = "455"
	projectile_type = /obj/item/projectile/bullet/pistol/a445
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "pbullet"
	spent_icon = "rifle-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 250)
	randpixel = 8

/obj/item/ammo_casing/a455hp
	desc = "A .455 casing. This one looks altered."
	caliber = "455"
	projectile_type = /obj/item/projectile/bullet/pistol/a445/hp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "pbullet"
	spent_icon = "rifle-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 250)
	randpixel = 8

/obj/item/ammo_casing/a3030
	desc = "A .30-30 Winchester casing."
	caliber = "a3030"
	projectile_type = /obj/item/projectile/bullet/rifle/a3030
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "looseriflerounds_1"
	spent_icon = "rifle-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 350)
	randpixel = 8

/obj/item/ammo_casing/a3030hp
	desc = "A .30-30 Winchester casing. This one looks altered."
	caliber = "a3030"
	projectile_type = /obj/item/projectile/bullet/rifle/a3030/hp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "looseriflerounds_1"
	spent_icon = "rifle-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 350)
	randpixel = 8

/obj/item/ammo_casing/a45
	desc = "A .45 ACP casing."
	caliber = "45"
	projectile_type = /obj/item/projectile/bullet/pistol/a45
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "pbullet"
	spent_icon = "r-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 75)
	randpixel = 8

/obj/item/ammo_casing/a45hp
	desc = "A .45 ACP casing."
	caliber = "45"
	projectile_type = /obj/item/projectile/bullet/pistol/a45/hp
	icon = 'icons/FoF/munitions.dmi'
	icon_state = "pbullet"
	spent_icon = "r-casing-spent"
	matter = list(DEFAULT_WALL_MATERIAL = 75)
	randpixel = 8