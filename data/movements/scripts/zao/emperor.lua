function onStepIn(cid, item, position, fromPosition)

--Config-->
local queststatus = getPlayerStorageValue(cid, 16007)
--EndConfig-->
if item.actionid == 16007 and queststatus == -1 then
doPlayerSendTextMessage(cid, TALKTYPE_ORANGE_1
, "It seems by defeating Bosses you have stoped this army from entering your world! Better leave this ghastly place forever.")
doPlayerAddOutfit(cid, 366, 2)
doPlayerAddOutfit(cid, 367, 2)
doPlayerAddOutfit(cid, 366, 1)
doPlayerAddOutfit(cid, 367, 1)
setPlayerStorageValue(cid, 16007, 1)
return TRUE
end

if item.actionid == 16007 and queststatus == -1 then
-- Here is the code start:
starting={x = 464, y = 565, z = 14, stackpos = 253}
checking={x=starting.x, y=starting.y, z=starting.z, stackpos=starting.stackpos}
ending={x = 472, y = 570, z = 14, stackpos = 253}
players=0
totalmonsters=0
monster = {}
repeat
creature= getThingfromPos(checking)
if creature.itemid > 0 then
if getPlayerAccess(creature.uid) == 0 then
players=players+1
end
if getPlayerAccess(creature.uid) ~= 0 and getPlayerAccess(creature.uid) ~= 3 then
totalmonsters=totalmonsters+1
monster[totalmonsters]=creature.uid
end
end
checking.x=checking.x+1
if checking.x>ending.x then
checking.x=starting.x
checking.y=checking.y+1
end
until checking.y>ending.y
if players==0 then
trash= {x=33193, y=31689, z=15}
current=0
repeat
current=current+1
doTeleportThing(monster[current],trash)
until current>=totalmonsters
end
-- Here is the end of it

doTeleportThing(cid, player_pos_entrada)
doSendMagicEffect(player_pos_entrada, 10)

else
doPlayerSendTextMessage(cid, TALKTYPE_ORANGE_1
, 'Você já terminou a quest!')
end
end