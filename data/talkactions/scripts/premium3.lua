function onSay(cid, words, param)
	if getPlayerPremiumDays(cid) <= 350 then
if(getPlayerItemCount(cid, 9971) > 0) then
doPlayerRemoveItem(cid, 9971, 30)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[4])
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_GIFT_WRAPS)

			doPlayerAddPremiumDays(cid, 30)
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have bought 30 days of premium account.")
		else
			doPlayerSendCancel(cid, "You don't have enough money, 30 days premium account costs 30 Neox coins.")
			doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
		end
	else
		doPlayerSendCancel(cid, "You can not buy more than one year of Premium Account.")
		doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
	end
end