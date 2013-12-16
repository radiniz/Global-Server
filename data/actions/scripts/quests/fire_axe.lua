function onUse(cid, item, frompos, item2, topos)

local config = {
        storage = 14260, -- change to your own storage value 
        item = 2432, 
		

}

        if getPlayerStorageValue(cid, config.storage) == -1 then
                setPlayerStorageValue(cid, config.storage, 1)
				doPlayerSendTextMessage(cid,18,"You have found a fire axe.")
                key = doPlayerAddItem(cid, config.item, 1) ~= -1
        else
                doPlayerSendTextMessage(cid,18,"The pile of bones is empty.")
                end
        return TRUE
end