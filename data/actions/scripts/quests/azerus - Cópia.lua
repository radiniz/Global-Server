local waves = {
	{x = 32779, y = 31166, z = 10},
	{x = 32787, y = 31166, z = 10},
	{x = 32782, y = 31162, z = 10},
	{x = 32784, y = 31162, z = 10},
	{x = 32782, y = 31170, z = 10},
	{x = 32784, y = 31170, z = 10},
}

local function doClearArea(fromPos, toPos)
	if(getGlobalStorageValue(982) == 1) then
		for x = fromPos.x, toPos.x do
			for y = fromPos.y, toPos.y do
				if(getThingfromPos({x = x, y = y, z = 10, stackpos = 255}).uid > 0) then
					if(isMonster(getThingfromPos({x = x, y = y, z = 10, stackpos = 255}).uid)) then
						doRemoveCreature(getThingfromPos({x = x, y = y, z = 10, stackpos = 255}).uid)
					end
				end
			end
		end
		setGlobalStorageValue(982, 0)
	end
	return true
end

local function doChangeAzerus(fromPos, toPos)
	for x = fromPos.x, toPos.x do
		for y = fromPos.y, toPos.y do
			if(getThingfromPos({x = x, y = y, z = 10, stackpos = 255}).uid > 0) then
				if(isMonster(getThingfromPos({x = x, y = y, z = 10, stackpos = 255}).uid)) then
					if(getCreatureName(getThingfromPos({x = x, y = y, z = 10, stackpos = 255}).uid) == "azerus") then
						doRemoveCreature(getThingfromPos({x = x, y = y, z = 10, stackpos = 255}).uid)
						newPos = {x = x, y = y, z = 10}
						doCreatureSay(cid, "No! I am losing my energy!", TALKTYPE_ORANGE_1)
						doSummonCreature("azerus3", newPos)
					end
				end
			end
		end
	end
	return true
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.actionid == 58261) then
		if(getGlobalStorageValue(982) < 1) then -- Fight
			doCreatureSay(cid, "Click!", TALKTYPE_ORANGE_1)
			setGlobalStorageValue(982, 1)
			addEvent(doSummonCreature, 5 * 1000, "azerus", {x = 32783, y = 31167, z = 10})
			doSendMagicEffect({x = 32783, y = 31167, z = 10}, CONST_ME_TELEPORT)
			for i = 1, 4 do
				if(i == 1) then
					creature = "rift worm"
				elseif(i == 2) then
					creature = "rift scythe"
				elseif(i == 3) then
					creature = "rift brood"
				elseif(i == 4) then
					creature = "war golem"
				end
				for k = 1, table.maxn(waves) do			
					addEvent(doSummonCreature, i * 20 * 1000, creature, waves[k])
					addEvent(doSendMagicEffect, i * 20 * 1000, waves[k], CONST_ME_TELEPORT)
				end
			end
			addEvent(doChangeAzerus, 4 * 20 * 1000, {x = 32776, y = 31157, z = 10}, {x = 32790, y = 31175, z = 10})
			addEvent(doClearArea, 5 * 1000 * 60, {x = 32776, y = 31157, z = 10}, {x = 32790, y = 31175, z = 10})
		end
	end
	return true
end