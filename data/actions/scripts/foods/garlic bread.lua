function onUse(cid, item, fromPosition, itemEx, toPosition)
local storage = 15300 -- storage pra usa so 1x
local item = 9111 --id do item q vai clica

if getPlayerStorageValue(cid, storage) == 3 and doPlayerRemoveItem(cid, item, 1) then
doCreatureSay(cid, "aaah...", TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid,15300,4)
setPlayerStorageValue(cid,15301,2)
else
doCreatureSay(cid, "Crunch...", TALKTYPE_ORANGE_1)
doPlayerRemoveItem(cid, item, 1)
end
end