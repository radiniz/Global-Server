function onStepIn(cid, item, pos)

local thais = {x=33213, y=32454, z=1}

    if item.actionid == 30029 then
        doPlayerSetTown(cid,10) 
		doTeleportThing(cid, thais, TRUE)
        doSendMagicEffect(getCreaturePosition(cid),12)
		doPlayerSendTextMessage(cid,18, "You are now a citizen of Darashia")
        end
    return 1
end