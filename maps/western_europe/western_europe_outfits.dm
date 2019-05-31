
/decl/hierarchy/outfit/job/britsoldier
	name = "British Soldier"

	uniform = /obj/item/clothing/under/wwi/brit
	shoes = /obj/item/clothing/shoes/british
	id_type = /obj/item/weapon/card/id/wwi/brittin
	l_pocket = /obj/item/weapon/storage/box/letter/brit
	l_ear = null
	belt = null
	pda_slot = null

	flags = 0

/decl/hierarchy/outfit/job/britsoldier/equip_id(mob/living/carbon/human/H)
	var/obj/item/weapon/card/id/wwi/brittin/C = ..()
	C.assignment = "British Soldier"
	H.set_id_info(C)

/decl/hierarchy/outfit/job/germknight
	name = "German Knight"

	uniform = /obj/item/clothing/under/wwi/german
	shoes = /obj/item/clothing/shoes/germanarmor
	suit = /obj/item/clothing/suit/storage/wwi/germanarmor
	id_type = /obj/item/weapon/card/id/wwi/germanbrass
	l_pocket = /obj/item/weapon/storage/box/letter/german
	l_ear = null
	belt = null
	head = /obj/item/clothing/head/helmet/germanarmor
	gloves = /obj/item/clothing/gloves/thick/germanarmor
	pda_slot = null

	flags = 0

/decl/hierarchy/outfit/job/germknight/equip_id(mob/living/carbon/human/H)
	var/obj/item/weapon/card/id/wwi/germanbrass/C = ..()
	C.assignment = "German Knight"
	H.set_id_info(C)

/decl/hierarchy/outfit/job/frenchsoldier
	name = "French Soldier"

	uniform = /obj/item/clothing/under/wwi/french
	shoes = /obj/item/clothing/shoes/french
	id_type = /obj/item/weapon/card/id/wwi/frenchtin
	l_pocket = /obj/item/weapon/storage/box/letter/brit
	l_ear = null
	belt = null
	pda_slot = null

	flags = 0
/decl/hierarchy/outfit/job/frenchsoldier/equip_id(mob/living/carbon/human/H)
	var/obj/item/weapon/card/id/wwi/frenchtin/C = ..()
	C.assignment = "French Soldier"
	H.set_id_info(C)

/decl/hierarchy/outfit/job/britknight
	name = "British Knight"

	uniform = /obj/item/clothing/under/wwi/brit
	shoes = /obj/item/clothing/shoes/britarmor
	suit = /obj/item/clothing/suit/armor/special/wwi/britarmor
	id_type = /obj/item/weapon/card/id/wwi/britbrass
	l_pocket = /obj/item/weapon/storage/box/letter/brit
	l_ear = null
	belt = null
	head = /obj/item/clothing/head/helmet/britarmor
	gloves = /obj/item/clothing/gloves/thick/britarmor
	pda_slot = null

	flags = 0

/decl/hierarchy/outfit/job/britknight/equip_id(mob/living/carbon/human/H)
	var/obj/item/weapon/card/id/wwi/britbrass/C = ..()
	C.assignment = "British Knight"
	H.set_id_info(C)

/decl/hierarchy/outfit/job/germsoldier
	name = "German Soldier"

	uniform = /obj/item/clothing/under/wwi/german
	shoes = /obj/item/clothing/shoes/german
	id_type = /obj/item/weapon/card/id/wwi/germantin
	l_pocket = /obj/item/weapon/storage/box/letter/german
	l_ear = null
	belt = null
	pda_slot = null

	flags = 0