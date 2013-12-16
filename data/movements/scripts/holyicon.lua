function onStepIn(cid, item, position, fromPosition)
    local newPosition = {x=32716, y=32347, z=7}
	local noPosition = {x=32716, y=32340, z=7}
        if getPlayerItemCount(cid, 10305) > 0 and getGlobalStorageValue(cid,35734) == -1 and (getPlayerStorageValue(cid, 35700) == -1) then
		    	doTeleportThing(cid, newPosition, TRUE)
			doSendMagicEffect(fromPosition, CONST_ME_BIGPLANTS)
			doSendMagicEffect(newPosition, CONST_ME_TELEPORT)
			setGlobalStorageValue(35734, 1)
                  	doPlayerRemoveItem(cid, 10305, 1)
		else
			doTeleportThing(cid, noPosition, TRUE)
			doSendMagicEffect(noPosition, CONST_ME_TELEPORT)
	end
end