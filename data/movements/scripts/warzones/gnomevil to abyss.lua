function onStepIn(cid, item, pos)
local pos = {x = 33020, y = 31902, z = 9}
	if isPlayer(cid) == TRUE then
    tele = getPlayerStorageValue(cid,35443)
    if tele == 1 then

	  doPlayerSendTextMessage(cid,18,"Boa Sorte!")

    else
        doSendMagicEffect(pos, CONST_ME_TELEPORT)
        doTeleportThing(cid, pos)
	  doPlayerSendTextMessage(cid,18,"Sorry, but first you need to complete the Warzone 2.")

    end
	end
	return TRUE
end