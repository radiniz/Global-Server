function onUse(cid, item, fromPosition, itemEx, toPosition)
local storage = 80008 -- storage pra usa so 1x
local item = 18518 --id do item q vai clica

if getPlayerStorageValue(cid, storage) == -1 and doPlayerRemoveItem(cid, item, 1) then
doCreatureSay(cid, "Voce obteve o first soil guardian addon!", TALKTYPE_ORANGE_1)
doPlayerAddOutfit(cid, 514, 1)
doPlayerAddOutfit(cid, 516, 1)
setPlayerStorageValue(cid,storage,1)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYDAMAGE)
else
doCreatureSay(cid, "Voce ja tem este addon ou não tem o item necessário!", TALKTYPE_ORANGE_1)
end
end