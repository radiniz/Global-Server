function onStepIn(cid, item, pos)
local pos = {x = 33019, y = 31888, z = 9}
	if isPlayer(cid) == TRUE then
    tele = getPlayerStorageValue(cid,35445)
    if tele == 1 then

	  doPlayerSendTextMessage(cid,18,"Boa Sorte!")

    else
        doSendMagicEffect(pos, CONST_ME_TELEPORT)
        doTeleportThing(cid, pos)
	  doPlayerSendTextMessage(cid,18,"Sorry, but first you need complete the Warzone 1.")

    end
	end
	return TRUE
end