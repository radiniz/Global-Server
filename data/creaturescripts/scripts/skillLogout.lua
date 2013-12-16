function onLogout(cid)
local storage_time_offline = 968472
	if(OfflineTraining_canStartTraining(cid)) then
		OfflineTraining_turnOnTraining(cid)
	end
	OfflineTraining_setLogoutTime(cid)
	setPlayerStorageValue(cid, storage_time_offline, os.time()) 
	return true
end