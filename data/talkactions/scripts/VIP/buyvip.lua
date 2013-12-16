function onSay(cid, words, param, channel)
vip.addVipByAccount(getPlayerAccount(cid), vip.getDays(30))
doPlayerRemoveItem(cid, 9971, 30)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce adquiriu 30 dias de VIP!")
return true
end