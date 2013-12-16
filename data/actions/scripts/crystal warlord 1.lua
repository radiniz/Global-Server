function onUse(cid, item, fromPosition, itemEx, toPosition)
local storage = 80009 -- storage pra usa so 1x
local item = 18521 --id do item q vai clica

if getPlayerStorageValue(cid, storage) == -1 and doPlayerRemoveItem(cid, item, 1) then
doCreatureSay(cid, "Voce obteve o first crystal warlord addon!", TALKTYPE_ORANGE_1)
doPlayerAddOutfit(cid, 513, 1)
doPlayerAddOutfit(cid, 512, 1)
setPlayerStorageValue(cid,storage,1)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYDAMAGE)
else
doCreatureSay(cid, "Voce ja tem este addon ou não tem o item necessário!", TALKTYPE_ORANGE_1)
end
end