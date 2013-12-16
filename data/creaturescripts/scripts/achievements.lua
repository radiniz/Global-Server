function onThink(cid, interval)
    if isPlayer(cid) then
        for i = ACHIEVEMENT_FIRST, ACHIEVEMENT_LAST do
            local id = i - ACHIEVEMENT_START
            if getCreatureStorage(cid, i) >= getAchievementStorageValue(id) then -- i == getAchievementStorageId(id)
                doPlayerAddAchievement(cid, id)
		end
	end
	return TRUE
end