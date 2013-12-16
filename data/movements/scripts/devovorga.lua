function onStepIn(cid, item, pos, fromPosition)

	if item.uid == 62306 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x = 32956, y = 31516, z = 8}, TRUE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 62307 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x = 32949, y = 31520, z = 7}, TRUE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 62308 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x = 32954, y = 31524, z = 8}, TRUE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 62309 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x = 32951, y = 31512, z = 9}, TRUE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 62310 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x = 32936, y = 31648, z = 8}, TRUE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 62311 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x = 33143, y = 31528, z = 2}, TRUE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	return TRUE
end