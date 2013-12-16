function onStepIn(cid, item, pos)

local thais = {x=32360, y=31782, z=7}

    if item.actionid == 30025 then
        doPlayerSetTown(cid,4) 
		doTeleportThing(cid, thais, TRUE)
        doSendMagicEffect(getCreaturePosition(cid),12)
		doPlayerSendTextMessage(cid,18, "You are now a citizen of Carlin")
        end
    return 1
end