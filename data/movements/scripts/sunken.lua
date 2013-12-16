function onStepIn(cid, item, pos)
    if item.actionid == 32560 then
	doTeleportThing(cid, {x = 32949, y = 31181, z = 9}, TRUE)
        doSendMagicEffect(getCreaturePosition(cid), CONST_ME_WATERSPLASH)
        end
    return true
end