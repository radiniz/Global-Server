function onUse(cid, item, frompos, item2, topos)
local config = {
	key_aid = 3899
}
	if item.uid == 11001 and getPlayerStorageValue(cid, 10004) == -1 then
      doPlayerSendTextMessage(cid,18,"You have found a key.")
	  key = doPlayerAddItem(cid, 2089, 1)
	  doSetItemActionId(key, config.key_aid)
	  setPlayerStorageValue(cid, 10004,1)
    else
      doPlayerSendTextMessage(cid,18,"It is empty.")
	 end
  return 1
end