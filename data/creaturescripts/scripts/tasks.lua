function onKill(cid, target, lastHit)
	local creature = tasks[getCreatureName(target)]
	if creature then
		if isInArray({-1, creature.amount}, getPlayerStorageValue(cid, creature.storage)) or (not isInArray({14003, 14004, 14005,}, creature.storage) and getPlayerStorageValue(cid, 14500) ~= creature.storage) then
			return true
		end

		local newValue = getPlayerStorageValue(cid, creature.storage) + 1
		setPlayerStorageValue(cid, creature.storage, newValue)
		end
	return true
end