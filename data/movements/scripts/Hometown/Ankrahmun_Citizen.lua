function onStepIn(cid, item, pos)

local thais = {x=33194, y=32853, z=8}

    if item.actionid == 30027 then
        doPlayerSetTown(cid,9) 
		doTeleportThing(cid, thais, TRUE)
        doSendMagicEffect(getCreaturePosition(cid),12)
		doPlayerSendTextMessage(cid,18, "You are now a citizen of Ankrahmun")
        end
    return 1
end