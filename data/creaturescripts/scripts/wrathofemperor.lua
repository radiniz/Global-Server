function onDeath(cid, corpse, killer)

registerCreatureEvent(cid, "Wrathofemperor")

local creaturename = getCreatureName(cid)

local Spite_Of_The_Emperor_in_position = {x=33081, y=31146, z=15, stackpos=2}
local Fury_Of_The_Emperor_in_position = {x=33129, y=31145, z=15, stackpos=2}
local Wrath_Of_The_Emperor_in_position = {x=33128, y=31121, z=15, stackpos=2}
local Scorn_Of_The_Emperor_in_position = {x=33081, y=31119, z=15, stackpos=2}
local Snake_God_Essence_in_position = {x=467, y=568, z=14, stackpos=2}

local Spite_Of_The_Emperor_to_position = {x=33126, y=31153, z=15, stackpos=1}
local Fury_Of_The_Emperor_to_position = {x=33119, y=31126, z=15, stackpos=1}
local Wrath_Of_The_Emperor_to_position = {x=33096, y=31115, z=15, stackpos=1}
local Scorn_Of_The_Emperor_to_position = {x=469, y=565, z=15, stackpos=1}
local Snake_God_Essence_to_position = {x=33112, y=31251, z=8, stackpos=1}

local time_to_pass = 180
local tpID = 5023
local doEffect = CONST_ME_ENERGYHIT
local message = "You now have 3 minutes to exit this room through the teleporter. It will bring you to the next room only during his time or the teleporter will disappear."

if creaturename == 'Spite_Of_The_Emperor' then

teleport = doCreateTeleport(tpID, Spite_Of_The_Emperor _to_position, Spite_Of_The_Emperor_in_position)

doSendMagicEffect(Spite_Of_The_Emperor_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInSpite_Of_The_EmperorWard, (1000*time_to_pass))

elseif creaturename == 'Fury_Of_The_Emperor' then

teleport = doCreateTeleport(tpID, Fury Of The Emperor_to_position, Fury_Of_The_Emperor_in_position)

doSendMagicEffect(Fury_Of_The_Emperor_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInFury_Of_The_EmperorWard, (1000*time_to_pass))

elseif creaturename == 'Wrath_Of_The_Emperor' then

teleport = doCreateTeleport(tpID, Wrath_Of_The_Emperor_to_position, Wrath_Of_The_Emperor_in_position)

doSendMagicEffect(Wrath_Of_The_Emperor_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInWrath_Of_The_EmperorWard, (1000*time_to_pass))

elseif creaturename == 'Scorn_Of_The_Emperor' then

teleport = doCreateTeleport(tpID, Scorn_Of_The_Emperor_to_position, Scorn_Of_The_Emperor_in_position)

doSendMagicEffect(Scorn_Of_The_Emperor_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInScorn_Of_The_EmperorWard, (1000*time_to_pass))

elseif creaturename == 'Snake_God_Essence' then

teleport = doCreateTeleport(tpID, Snake_God_Essence_to_position, Snake_God_Essence_in_position)

doSendMagicEffect(Snake_God_Essence_in_position, CONST_ME_ENERGYHIT)

doCreatureSay(cid, message, TALKTYPE_ORANGE_1)

addEvent(removeTeleportInSnake_God_EssenceWard, (1000*time_to_pass))

end
end

function removeTeleportInSpite_Of_The_EmperorWard()
if getThingfromPos({x=33126, y=31153, z=15, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=33126, y=31153, z=15, stackpos=1}).uid,1)
doSendMagicEffect({x=33126, y=31153, z=15, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInFury_Of_The_EmperorWard()
if getThingfromPos({x=33119, y=31126, z=15, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=33129, y=31145, z=15, stackpos=1}).uid,1)
doSendMagicEffect({x=33129, y=31145, z=15, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInScorn_Of_The_EmperorWard()
if getThingfromPos({x=469, y=565, z=15, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=469, y=565, z=15, stackpos=1}).uid,1)
doSendMagicEffect({x=469, y=565, z=15, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInWrath_Of_The_EmperorWard()
if getThingfromPos({x=33096, y=31115, z=15, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=33096, y=31115, z=15, stackpos=1}).uid,1)
doSendMagicEffect({x=33096, y=31115, z=15, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end

function removeTeleportInSnake_God_EssenceWard()
if getThingfromPos({x=33112, y=31251, z=8, stackpos=1}).itemid == 5023 then
doRemoveItem(getThingfromPos({x=33112, y=31251, z=8, stackpos=1}).uid,1)
doSendMagicEffect({x=33112, y=31251, z=8, stackpos=1}, CONST_ME_POFF)
return TRUE
end
end
