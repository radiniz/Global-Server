function onStepIn(cid, item, pos)

local thais = {x=32957, y=32076, z=7}

    if item.actionid == 30026 then
        doPlayerSetTown(cid,1) 
		doTeleportThing(cid, thais, TRUE)
        doSendMagicEffect(getCreaturePosition(cid),12)
		doPlayerSendTextMessage(cid,18, "You are now a citizen of Venore")
        end
    return 1
end