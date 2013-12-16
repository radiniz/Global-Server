function onStepIn(cid, item, pos)

local thais = {x=32213, y=31133, z=7}

    if item.actionid == 30032 then
        doPlayerSetTown(cid,12) 
		doTeleportThing(cid, thais, TRUE)
        doSendMagicEffect(getCreaturePosition(cid),12)
		doPlayerSendTextMessage(cid,18, "You are now a citizen of Svargrond")
        end
    return 1
end