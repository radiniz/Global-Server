local config = {
	savePlayersOnSendMail = true
}

function onMailSend(cid, receiver, item, openBox)
	if(config.savePlayersOnSendMail) then
		doPlayerSave(cid, true)
	end

	return true
end
