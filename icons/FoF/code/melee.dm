
/obj/item/weapon/melee/combat_knife
	name = "combat knife"
	desc = "Multipurpose knife for utility use and close quarters combat"
	icon = 'code/modules/halo/weapons/icons/Weapon Sprites.dmi'
	icon_state = "Knife"
	item_state = "butterflyknife_open"
	w_class = ITEM_SIZE_SMALL
	force = 20
	throwforce = 10
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	slot_flags = SLOT_BELT

/obj/item/weapon/melee/combat_knife/german
	icon = 'icons/FoF/weaponsnew.dmi'
	name = "\improper German Trench Knife"
	desc = "A robust trench knife."
	icon_state = "knife_german"

/obj/item/weapon/melee/combat_knife/british
	icon = 'icons/FoF/weaponsnew.dmi'
	name = "\improper British Trench Knife"
	desc = "A robust trench knife."
	icon_state = "knife_british"

/obj/item/weapon/melee/combat_knife/french
	icon = 'icons/FoF/weaponsnew.dmi'
	name = "\improper French Trench Knife"
	desc = "A robust trench knife."
	icon_state = "knife_french"

/obj/item/weapon/melee/baton/humbler
	name = "humbler stun device"
	desc = "A retractable baton capable of inducing a large amount of pain via electrical shocks."
	icon = 'code/modules/halo/weapons/icons/Weapon Sprites.dmi'
	icon_state = "humbler stun device"
	item_state = "classic_baton"
	force = 35
	damtype = PAIN
	w_class = 2		//smaller while we're folded up

/obj/item/weapon/melee/baton/humbler/New()
	..()
	bcell = new/obj/item/weapon/cell/high(src)
	update_icon()
	return

/obj/item/weapon/melee/baton/humbler/attack_self(mob/user)
	if(..())
		if(status)
			w_class = 3
			icon_state = "humbler stun device"
		else
			w_class = 2
			item_state = "classic_baton"

/obj/item/weapon/melee/baton/humbler/deductcharge(var/chrgdeductamt)
	if(!..())
		w_class = 2
		item_state = "classic_baton"

obj/item/weapon/melee/hammer
	name = "hammer"
	desc = "Nails, skulls, what isn't a heavy rusted hammer good for pounding on?" //L-Lewd
	icon = 'icons/FoF/tools_ww1.dmi'
	icon_state = "ww1_multitool-hammer"
	w_class = ITEM_SIZE_NORMAL
	force = 15
	throwforce = 10
	attack_verb = list("beaten","clubbed","whacked","smacked","slapped","crushed","crunched","bashed","clobbered","struck","busted","thumped","battered","pounded","pummeled","slammed")