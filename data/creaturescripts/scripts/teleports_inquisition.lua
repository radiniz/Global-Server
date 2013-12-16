local config = {
	message = "You have 60 seconds for back use Death Monster For Teleport You.",
	timeToRemove = 60, -- seconds
	teleportId = 1387,
	bosses = {
		["Ushuriel"] = { x = 33069, y = 31783, z = 13 },
		["Zugurosh"] = { x = 33371,  y = 31613, z = 14 },
		["Madareth"] = { x = 33153	, y = 31781, z = 12 },
		["Annihilon"] = { x = 33038, y = 31753, z = 15 },
		["Latrivan"] = { x = 33199, y = 31686, z = 12 },
		["Hellgorak"] = { x = 33111, y = 31682, z = 12 },			["Tirecz"] = { x = 33049, y = 30985, z = 7 }
              
                
	}
}
	
local function removal(position)
	doRemoveItem(getTileItemById(position, config.teleportId).uid, 1)
    return TRUE
end


function onDeath(cid, corpse, killer)
	registerCreatureEvent(cid, "inquisitionPortals")
	local position = getCreaturePosition(cid)
	
	for name, pos in pairs(config.bosses) do
		if name == getCreatureName(cid) then
			teleport = doCreateTeleport(config.teleportId, pos, position)
			doCreatureSay(cid, config.message, TALKTYPE_ORANGE_1)
			addEvent(removal, config.timeToRemove * 1000, position)
			doSendMagicEffect(position,65)
		end
	end
	return TRUE
end
