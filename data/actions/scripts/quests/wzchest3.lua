function onUse(cid, item, fromPosition, itemEx, toPosition)
	local config = {
		storage = 724879,
		bstorage = 924879, -- boss storage
		hours = 12
	}

	if getPlayerStorageValue(cid, config.bstorage) < 1 then
		return doPlayerSendCancel(cid, "You have to kill the boss before")
	end

	if getPlayerStorageValue(cid, config.storage) >= os.time() then
		return doPlayerSendTextMessage(cid, 18, "Sorry, but you have wait to "..os.date("%d %B %Y %X ", getPlayerStorageValue(cid,config.storage)).." to use this again.")
	end

		doPlayerAddItem(cid, 18423, 2) -- 2 major crystalline tokens
		doPlayerAddItem(cid, 18408, 1) -- 1 prismatic ring
		doPlayerAddItem(cid, 18396, 1) -- 1 mucus plug
		doPlayerAddItem(cid, 18414, 12) -- 12 violet crystal shards
		doPlayerAddItem(cid, 2160, 5) -- 5 crystal coins
		setPlayerStorageValue(cid, config.storage, os.time()+config.hours*3600)
		setPlayerStorageValue(cid, config.bstorage,-1)
		return doPlayerSendTextMessage(cid,18,"You have found 2 major crystalline tokens, 1 prismatic ring, 1 mucus plug , 10 violet crystal shards and 5 crystal coins, wait "..config.hours.." hours to use this again.")
end