function onSay(cid, words, param)
 
local config = {
	bankSystemEnabled = getBooleanFromString(getConfigInfo('bankSystem')),
}
 
if config.bankSystemEnabled == TRUE then
	if config.playerIsFighting == FALSE then
 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Your account balance is " .. getPlayerBalance(cid) .. ".")
	return TRUE
else
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Bank can not be used in fight.")
	return TRUE
end
else
	return FALSE
	end
end