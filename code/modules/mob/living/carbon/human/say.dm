/mob/living/carbon/human/say(var/message, var/datum/language/language = null)
	var/alt_name = ""
	if(name != GetVoice())
		if(get_id_name("Unknown") != GetVoice())
			alt_name = "(as [get_id_name("Unknown")])"
		else
			name = get_id_name("Unknown")

	message = sanitize(message)
	..(message, alt_name = alt_name, speaking = language)

/mob/living/carbon/human/proc/forcesay(list/append)
	if(stat == CONSCIOUS)
		if(client)
			var/virgin = 1	//has the text been modified yet?
			var/temp = winget(client, "input", "text")
			if(findtextEx(temp, "Say \"", 1, 7) && length(temp) > 5)	//case sensitive means

				temp = replacetext(temp, ";", "")	//general radio

				if(findtext(trim_left(temp), ":", 6, 7))	//dept radio
					temp = copytext(trim_left(temp), 8)
					virgin = 0

				if(virgin)
					temp = copytext(trim_left(temp), 6)	//normal speech
					virgin = 0

				while(findtext(trim_left(temp), ":", 1, 2))	//dept radio again (necessary)
					temp = copytext(trim_left(temp), 3)

				if(findtext(temp, "*", 1, 2))	//emotes
					return
				temp = copytext(trim_left(temp), 1, rand(5,8))

				var/trimmed = trim_left(temp)
				if(length(trimmed))
					if(append)
						temp += pick(append)

					say(temp)
				winset(client, "input", "text=[null]")

/mob/living/carbon/human/say_understands(var/mob/other,var/datum/language/speaking = null)

	if(has_brain_worms()) //Brain worms translate everything. Even mice and alien speak.
		return 1

	if(species.can_understand(other))
		return 1

	//These only pertain to common. Languages are handled by mob/say_understands()
	if (!speaking)
		if (istype(other, /mob/living/silicon))
			return 1
		if (istype(other, /mob/living/carbon/brain))
			return 1
		if (istype(other, /mob/living/carbon/slime))
			return 1

	//This is already covered by mob/say_understands()
	//if (istype(other, /mob/living/simple_animal))
	//	if((other.universal_speak && !speaking) || src.universal_speak || src.universal_understand)
	//		return 1
	//	return 0

	return ..()

/mob/living/carbon/human/GetVoice()

	var/voice_sub
	if(istype(back,/obj/item/weapon/rig))
		var/obj/item/weapon/rig/rig = back
		// todo: fix this shit
		if(rig.speech && rig.speech.voice_holder && rig.speech.voice_holder.active && rig.speech.voice_holder.voice)
			voice_sub = rig.speech.voice_holder.voice
	else
		for(var/obj/item/gear in list(wear_mask,wear_suit,head))
			if(!gear)
				continue
			var/obj/item/voice_changer/changer = locate() in gear
			if(changer && changer.active && changer.voice)
				voice_sub = changer.voice
	if(voice_sub)
		return voice_sub
	if(mind && mind.changeling && mind.changeling.mimicing)
		return mind.changeling.mimicing
	if(GetSpecialVoice())
		return GetSpecialVoice()
	return real_name

/mob/living/carbon/human/proc/SetSpecialVoice(var/new_voice)
	if(new_voice)
		special_voice = new_voice
	return

/mob/living/carbon/human/proc/UnsetSpecialVoice()
	special_voice = ""
	return

/mob/living/carbon/human/proc/GetSpecialVoice()
	return special_voice


/mob/living/carbon/human/say_quote(var/message, var/datum/language/speaking = null)
	var/verb = "says"
	var/ending = copytext(message, length(message))

	if(speaking)
		verb = speaking.get_spoken_verb(ending)
	else
		if(ending == "!")
			verb=pick("exclaims","shouts","yells")
		else if(ending == "?")
			verb="asks"

	return verb

/mob/living/carbon/human/handle_speech_problems(var/list/message_data)
	if(silent || (sdisabilities & MUTE))
		message_data[1] = ""
		. = 1

	else if(istype(wear_mask, /obj/item/clothing/mask))
		var/obj/item/clothing/mask/M = wear_mask
		if(M.voicechange)
			message_data[1] = pick(M.say_messages)
			message_data[2] = pick(M.say_verbs)
			. = 1

	else
		. = ..(message_data)

/mob/living/carbon/human/handle_message_mode(message_mode, message, verb, speaking, used_radios, alt_name)
	switch(message_mode)
		if("intercom")
			if(!src.restrained())
				for(var/obj/item/device/radio/intercom/I in view(1))
					I.talk_into(src, message, null, verb, speaking)
					I.add_fingerprint(src)
					used_radios += I
		if("headset")
			if(ears && istype(ears,/obj/item/device/radio))
				var/obj/item/device/radio/R = ears
				R.talk_into(src,message,null,verb,speaking)
				used_radios += ears
		if("ears")
			var/obj/item/device/radio/R
			var/has_radio = 0
			if(ears && istype(ears,/obj/item/device/radio))
				R = ears
				has_radio = 1
			if(r_hand && istype(r_hand, /obj/item/device/radio))
				R = r_hand
				has_radio = 1
			if(l_hand && istype(l_hand,/obj/item/device/radio))
				R = l_hand
				has_radio = 1
			if(has_radio)
				R.talk_into(src,message,null,verb,speaking)
				used_radios += R
		if("whisper")
			whisper_say(message, speaking, alt_name)
			return 1
		else
			if(message_mode)
				if(ears && istype(ears,/obj/item/device/radio))
					ears.talk_into(src,message, message_mode, verb, speaking)
					used_radios += ears

/mob/living/carbon/human/handle_speech_sound()
	if(species.speech_sounds && prob(species.speech_chance))
		var/list/returns[2]
		returns[1] = sound(pick(species.speech_sounds))
		returns[2] = 50
		return returns
	return ..()

/mob/living/carbon/human/can_speak(datum/language/speaking)
	var/needs_assist = 0
	var/can_speak_assist = 0

	if(species && speaking.name in species.assisted_langs)
		needs_assist = 1
		for(var/obj/item/organ/internal/I in src.internal_organs)
			if((speaking in I.assists_languages) && (I.is_usable()))
				can_speak_assist = 1

	if(needs_assist && !can_speak_assist)
		return 0
	else if(needs_assist && can_speak_assist)
		return 1

	return ..()

/mob/living/carbon/human/parse_language(var/message)
	var/prefix = copytext(message,1,2)
	if(length(message) >= 1 && prefix == "!")
		return all_languages["Noise"]

	if(length(message) >= 2 && is_language_prefix(prefix))
		var/language_prefix = lowertext(copytext(message, 2 ,3))
		var/datum/language/L = language_keys[language_prefix]
		if (can_speak(L))
			return L

	return null
