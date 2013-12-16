local function tameMonster(cid, item, itemEx, tame, run, broken)
	n = math.random(100)
	if n <= broken then
		doCreatureSay(cid, "O item quebrou! :@", TALKTYPE_ORANGE_1)
		doRemoveItem(item.uid)
	elseif n > broken and n <= (tame+broken) then
		doRemoveItem(item.uid)
		doCreatureSay(cid, "Montado com sucesso! :D", TALKTYPE_ORANGE_1)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce domou com sucesso "..getCreatureName(itemEx.uid)..".")
		return true
	elseif n > (tame+broken) and n <= (tame+broken+run) then
		doCreatureSay(cid, "O monstro escapou", TALKTYPE_ORANGE_1)
		doRemoveCreature(itemEx.uid)
	else
		doCreatureSay(cid, "Tente denovo!! :(", TALKTYPE_ORANGE_1)
	end
	return false
end

local function inArray(table, value)
	for i,v in pairs(table) do
		if (v.name == string.lower(value)) then
			return i
		end
	end
	return 0
end

 local mounts = {
 {item = 13307, name = "wailing widow", id = 1, tame=60, run=20, broken=20},
 {item = 13298, name = "terror bird", id = 2, tame=40, run=20, broken=40},
 {item = 5907, name = "bear", id = 3, tame=90, run=5, broken=5},
 {item = 13295, name = "black sheep", id = 4, tame=40, run=30, broken=30},
 {item = 13293, name = "midnight panther", id = 5, tame=60, run=20, broken=20},
 {item = 13538, name = "panda", id = 19, tame=50, run=25, broken=25},
 {item = 13539, name = "enraged white deer", id = 18, tame=70, run=15, broken=15},
 {item = 13294, name = "draptor", id = 6, tame=60, run=20, broken=20},
 {item = 13537, name = "incredible old witch", id =13, tame=40, run=30, broken=30},
 {item = 13305, name = "crustacea gigantica", id = 7, tame=80, run=10, broken=10},
 {item = 13536, name = "crystal wolf", id = 16, tame=60, run=20, broken=20},
 {item = 13247, name = "boar", id = 10, tame=80, run=10, broken=10},
 {item = 13498, name = "sandstone scorpion", id = 21, tame=70, run=10, broken=20},
 {item = 13508, name = "slug", id = 14, tame=60, run=20, broken=20},
 {item = 13535, name = "dromedary", id = 20, tame=60, run=20, broken=20},
 {item = 13291, name = "undead cavebear", id = 12, tame=70, run=10, broken=20},
 {item = 13939, name = "fire horse", id = 22, tame=60, run=20, broken=20},
 {item = 13939, name = "gray horse", id = 29, tame=60, run=20, broken=20},
 {item = 13939, name = "brown war horse", id = 17, tame=60, run=20, broken=20},
 {item = 15546, name = "lady bug", id = 27, tame=70, run=10, broken=20},
 {item = 15545, name = "manta", id = 28, tame=60, run=20, broken=20},
 {item = 13938, name = "uniwheel", id = 15, tame=70, run=15, broken=15},
 {item = 13292, name = "tin lizzard", id = 8, tame=70, run=15, broken=15},
 {item = 15546, name = "lady bug", id = 27, tame=70, run=15, broken=15},
 {item = 15545, name = "manta ray", id = 28, tame=70, run=15, broken=15},
 {item = 18447, name = "ironblight", id = 30, tame=70, run=15, broken=15},
 {item = 18448, name = "magma crawler", id = 31, tame=70, run=15, broken=15},
 {item = 18449, name = "dragonling", id = 32, tame=70, run=15, broken=15},
 {item = 18516, name = "gnarlhound", id = 33, tame=70, run=15, broken=15},
 {item = 20138, name = "water buffalo", id = 35, tame=70, run=15, broken=15},

 }

 function onUse(cid, item, fromPosition, itemEx, toPosition)
 if isCreature(itemEx.uid) then
 if inArray(mounts, getCreatureName(itemEx.uid)) > 0 then
 i = inArray(mounts, getCreatureName(itemEx.uid))
 if item.itemid == mounts[i].item and not getPlayerMount(cid, mounts[i].id) then
 if tameMonster(cid, item, itemEx, mounts[i].tame, mounts[i].run, mounts[i].broken) then
 doSendMagicEffect(fromPosition, CONST_ME_MAGIC_BLUE)
 doRemoveCreature(itemEx.uid)
 doPlayerAddMount(cid, mounts[i].id)
 else
 doSendMagicEffect(toPosition, CONST_ME_POFF)
 end
 end
 end
 end
 return true
 end