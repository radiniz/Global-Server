local from = {x=33066, y=31033, z=3}
local to = {x=33082, y=31049, z=3}
 
local monsters = {
	{{x=33047, y=30970, z=3}, 'Baron Brute'},
	{{x=33047, y=30971, z=3}, 'The Axeorcist'}
}
 
local players = {
	{{x=33091, y=31019, z=2}, {x=33074, y=31039, z=3}},
	{{x=33092, y=31019, z=2}, {x=33075, y=31039, z=3}}
}
 
local level = 120
 
local statue_pos = {x = 33072, y = 31039, z = 3}
 
function onUse(cid, item, fromPosition, itemEx, toPosition)
	local t = {}
	if item.itemid == 1945 then
		for i = 1, #players do
			t[i] = getTopCreature(players[i][1]).uid
			if not isPlayer(t[i]) then
				return doCreatureSay(cid, 'You need ' .. #players .. ' players to do this quest.', TALKTYPE_ORANGE_1, false, cid)
			elseif getPlayerLevel(cid) < level then
				return doCreatureSay(cid, 'All players have to be level ' .. level .. ' to do this quest.', TALKTYPE_ORANGE_1, false, cid)
			end
		end
		for i = 1, #t do
			doTeleportThing(t[i], players[i][2])
			doSendMagicEffect(players[i][1], CONST_ME_TELEPORT)
			doSendMagicEffect(players[i][2], CONST_ME_TELEPORT)
		end
			addEvent(Potwory1, 5 * 1000)
	else
		for x = from.x, to.x do
			for y = from.y, to.y do
				local v = getTopCreature({x=x, y=y, z=from.z}).uid
				if isPlayer(v) then
					return doCreatureSay(cid, 'There is already a team in the battle room.', TALKTYPE_ORANGE_1, false, cid)
				elseif isMonster(v) then
					table.insert(t, v)
				end
			end
		end
		for i = 1, #t do
			doRemoveCreature(t[i])
		end
	end
 
	return doTransformItem(item.uid, item.itemid == 1945 and 1946 or 1945)
end

function Potwory1()
doForceSummonCreature('Baron Brute', {x = statue_pos.x-1, y = statue_pos.y+1, z = statue_pos.z, stackpos = 253})
doForceSummonCreature('The Axeorcist', {x = statue_pos.x, y = statue_pos.y-1, z = statue_pos.z, stackpos = 253})
addEvent(Potwory2, 60 * 600)
return true
end 
function Potwory2()
doForceSummonCreature('Menace', {x = statue_pos.x-1, y = statue_pos.y+1, z = statue_pos.z, stackpos = 253})
doForceSummonCreature('Fatality', {x = statue_pos.x, y = statue_pos.y-1, z = statue_pos.z, stackpos = 253})
addEvent(Potwory4, 60 * 600)
return true
end
function Potwory4()
doForceSummonCreature('Incineron', {x = statue_pos.x-1, y = statue_pos.y+1, z = statue_pos.z, stackpos = 253})
doForceSummonCreature('Coldheart', {x = statue_pos.x+1, y = statue_pos.y-1, z = statue_pos.z, stackpos = 253})
addEvent(Potwory5, 60 * 600)
return true
end
function Potwory5()
doForceSummonCreature('Dreadwing', {x = statue_pos.x+1, y = statue_pos.y+1, z = statue_pos.z, stackpos = 253})
doForceSummonCreature('Doomhowl', {x = statue_pos.x, y = statue_pos.y-1, z = statue_pos.z, stackpos = 253})
addEvent(Potwory6, 60 * 600)
return true
end
function Potwory6()
doForceSummonCreature('Haunter', {x = statue_pos.x-1, y = statue_pos.y+1, z = statue_pos.z, stackpos = 253})
doForceSummonCreature('The Dreadorian', {x = statue_pos.x, y = statue_pos.y+1, z = statue_pos.z, stackpos = 253})
addEvent(Potwory7, 60 * 600)
return true
end
function Potwory7()
doForceSummonCreature('Tremorak', {x = statue_pos.x-1, y = statue_pos.y-1, z = statue_pos.z, stackpos = 253})
doForceSummonCreature('Rocko', {x = statue_pos.x, y = statue_pos.y-1, z = statue_pos.z, stackpos = 253})
addEvent(Potwory8, 60 * 600)
return true
end
function Potwory8()
doForceSummonCreature('Tirecz', {x = statue_pos.x-1, y = statue_pos.y-1, z = statue_pos.z, stackpos = 253})
addEvent(RemoveAlls, 90 * 600)
return true
end
function RemoveAlls()
addEvent(RemoveAll, 60 * 600)
return true
end
function RemoveAll()
doRemoveItem(getThingfromPos(from).uid,1)
doRemoveItem(getThingfromPos(to).uid,1)
return true
end