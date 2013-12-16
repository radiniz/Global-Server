function onSay(cid, words, param)
if getPlayerPremiumDays(cid) <= 360 then
if doPlayerRemoveItem(cid, 16101, 1) == TRUE then
doPlayerAddPremiumDays(cid, 30)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce comprou 30 dias de Premium.")
else
doPlayerSendCancel(cid, "Voce Nao tem scrolls suficiente para comprar, 30 dias de Premium, 1 Premium Scroll.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
else
doPlayerSendCancel(cid, "You can not buy more than one year of Premium Account.")
doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
end
return TRUE
end