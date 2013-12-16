function onUse(cid, item, fromPosition, itemEx, toPosition)
	local config = {
		storage = 724878,
		bstorage = 924878, -- boss storage
		hours = 12
	}

	if getPlayerStorageValue(cid, config.bstorage) < 1 then
		return doPlayerSendCancel(cid, "You have to kill the boss before")
	end

	if getPlayerStorageValue(cid, config.storage) >= os.time() then
		return doPlayerSendTextMessage(cid, 18, "Sorry, but you have wait to "..os.date("%d %B %Y %X ", getPlayerStorageValue(cid,config.storage)).." to use this again.")
	end

		doPlayerAddItem(cid, 18423, 2) -- 2 major crystalline tokens
		doPlayerAddItem(cid, 18407, 1) -- 1 prismatic necklace
		doPlayerAddItem(cid, 18396, 1) -- 1 mucus plug
		doPlayerAddItem(cid, 18413, 10) -- 10 green crystal shards
		doPlayerAddItem(cid, 2160, 4) -- 4 crystal coins
		setPlayerStorageValue(cid, config.storage, os.time()+config.hours*3600)
		setPlayerStorageValue(cid, config.bstorage,-1)
		return doPlayerSendTextMessage(cid,18,"You have found 2 major crystalline tokens, 1 prismatic necklace, 1 mucus plug , 10 blue crystal shards and 4 crystal coins, wait "..config.hours.." hours to use this again.")
end