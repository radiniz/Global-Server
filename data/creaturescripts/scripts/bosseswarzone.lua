function onKill(cid, target, damage, flags)
		if isPlayer(cid) then
	if(isMonster(target)) then
		if(string.lower(getCreatureName(target)) == "deathstrike") then
				setPlayerStorageValue(cid, 924877, 1)
				doCreatureSay(cid, "You can get your reward now.", TALKTYPE_ORANGE_1)
				doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
				end
			end
	if(isMonster(target)) then
		if(string.lower(getCreatureName(target)) == "gnomevil") then
				setPlayerStorageValue(cid, 924878, 1)
				doCreatureSay(cid, "You can get your reward now.", TALKTYPE_ORANGE_1)
				doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
				end
			end
	if(isMonster(target)) then
		if(string.lower(getCreatureName(target)) == "abyssador") then
				setPlayerStorageValue(cid, 924879, 1)
				doCreatureSay(cid, "You can get your reward now.", TALKTYPE_ORANGE_1)
				doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
				end
			end
		end
	return true
end
