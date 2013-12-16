function onStepIn(cid, item, pos)

local thais = {x=33023, y=31521, z=11}

    if item.actionid == 30016 then
        doPlayerSetTown(cid,14) 
		doTeleportThing(cid, thais, TRUE)
        doSendMagicEffect(getCreaturePosition(cid),12)
		doPlayerSendTextMessage(cid,18, "You are now a citizen of Farmine")
        end
    return 1
end