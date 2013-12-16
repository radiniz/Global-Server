function onStepIn(cid, item, pos)

local thais = {x=32369, y=32241, z=7}

    if item.actionid == 30022 then
        doPlayerSetTown(cid,2) 
		doTeleportThing(cid, thais, TRUE)
        doSendMagicEffect(getCreaturePosition(cid),12)
		doPlayerSendTextMessage(cid,18, "You are now a citizen of Thais")
        end
    return 1
end