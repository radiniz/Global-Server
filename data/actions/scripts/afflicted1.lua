function onUse(cid, item, fromPosition, itemEx, toPosition)
local storage = 70008 -- storage pra usa so 1x
local item = 13926 --id do item q vai clica

if getPlayerStorageValue(cid, storage) == -1 and doPlayerRemoveItem(cid, item, 1) then
doCreatureSay(cid, "Voce obteve o first afflited addon!", TALKTYPE_ORANGE_1)
doPlayerAddOutfit(cid, 430, 1)
doPlayerAddOutfit(cid, 431, 1)
setPlayerStorageValue(cid,storage,1)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYDAMAGE)
else
doCreatureSay(cid, "Voce ja tem este addon ou n�o tem o item necess�rio!", TALKTYPE_ORANGE_1)
end
end