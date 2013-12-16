--
function onUse(cid, item, frompos, item2, topos)
 
if item.uid ==15016 then
queststatus = getPlayerStorageValue(cid,1855)
if queststatus == 1 then
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"This Chest is empty.")
 
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Parabéns!!")
doSendMagicEffect(topos,12)
coins_uid = doPlayerAddItem(cid,12642,1)
setPlayerStorageValue(cid,1855,1)
end
return 0
end
return 1
end
