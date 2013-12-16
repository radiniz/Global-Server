function onStepIn(cid, item, pos)

local thais = {x=32595, y=32744, z=6}

    if item.actionid == 30031 then
        doPlayerSetTown(cid,8) 
		doTeleportThing(cid, thais, TRUE)
        doSendMagicEffect(getCreaturePosition(cid),12)
		doPlayerSendTextMessage(cid,18, "You are now a citizen of Port Hope")
        end
    return 1
end