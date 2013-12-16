function onUse(cid, item)
    if doRemoveItem(item.uid) then     
		doPlayerAddPremiumDays(cid, 30)
		doSendMagicEffect(getCreaturePosition(cid), 28)
        doPlayerSendTextMessage(cid,19, 'Your gain 30 days premmium!')
	end
return true
end  