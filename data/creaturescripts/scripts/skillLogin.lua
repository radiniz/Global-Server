-- 0.4 - offline training - login.lua
function onLogin(cid)
OfflineTraining_initialize(cid)
	if(OfflineTraining_isTraining(cid)) then
		OfflineTraining_turnOffTraining(cid)
		-- we add skill/mlvl, we select lower value: time that player was offline OR offline training time [bar in game - 9.6]
		OfflineTraining_addTrainedSkills(cid, math.min(OfflineTraining_getTime(cid), OfflineTraining_getOfflineTime(cid)))
		-- we remove offline training time [bar in game - 9.6],
		-- if player was offline longer then his 'offline training time' it will add him time [like on RL tibia]
		-- got '3  hours offline training time', stay logged off for 8 hours, you get skills for 3 hours and on login you got '5 hours offline training time'
		OfflineTraining_setTime(cid, math.abs(OfflineTraining_getTime(cid) - OfflineTraining_getOfflineTime(cid)))
	else
		-- offline trainging time also regenerate when you are offline, but NOT train
		OfflineTraining_setTime(cid, OfflineTraining_getTime(cid) + OfflineTraining_getOfflineTime(cid))
	end
	registerCreatureEvent(cid, "SkillLogout")
	
	-- CONFIG
	local secondsPerHit = 2 -- THE ATTACKSPEED (1 hit per 2 seconds; default) 
	local manaGenPerSec = 10 -- MANA USED PER SEC
	local offlineModifier = 0.5 -- FROM 0-1 (or higher if you wish). How fast you are skillin on offline training compared to normal (0.5 = 50%)
	local maxSecondsTraining = 60 * 60 * 12 -- (Default 12 hours)
	--END of config

	--local accid = getAccountNumberByPlayerName(getCreatureName(cid))
	local name = getCreatureName(cid)
	--local checkTraining =  db.getResult("SELECT `offlinetraining_time`, `offlinetraining_skill` FROM `players` WHERE `player_id` = ".. getPlayerGUID(cid) ..";")
	local accid = getPlayerGUID(cid)
	local player_training = db.getResult("SELECT `offlinetraining_skill` FROM `players` WHERE `id` = ".. accid ..";")
	player_training = player_training:getDataInt("offlinetraining_skill")
	--local checkTraining =  db.storeQuery("SELECT * FROM offline_training WHERE `account_id`=".. accid .." AND `name`='".. name .."';")
	local skills = {[8]=MAGIC, [4]=SKILL_DISTANCE,[1]=SKILL_CLUB, [3]=SKILL_AXE,[2]=SKILL_SWORD}
	local skillNames = {[8]="Magic Level", [4]="Distance Fighting",[1]="Club Fighting", [3]="AxeFighting",[2]="Sword Fighting"}
	local storage_time = 968471
	local storage_time_offline = 968472

	if player_training > -1 then
		local skill = player_training
		if skill == 0 then
			skill = 8
		end
		--local timeTrained = result.getDataInt(checkTraining, "start_training")
		local timeTrained = getPlayerStorageValue(cid, storage_time)
		local secondsTrained = os.time()-timeTrained 
		local skillTries = math.floor((secondsTrained/secondsPerHit)*offlineModifier)
		local skillBefore
		local skillAfter
		
		local seconds_gain_new = 0
		if timeTrained > maxSecondsTraining then
			seconds_gain_new = timeTrained - maxSecondsTraining
			timeTrained = maxSecondsTraining 
		end
		
		if skill ~= 8 then	
			skillBefore = getPlayerSkillLevel(cid, skills[skill])	
			doPlayerAddSkillTry(cid, skills[skill], skillTries)
			skillAfter = getPlayerSkillLevel(cid, skills[skill])
		else
			skillBefore = getPlayerMagLevel(cid)
			doPlayerAddSpentMana(cid, manaGenPerSec*secondsTrained)
			skillAfter = getPlayerMagLevel(cid)
		end
			
		local skillBeforeShield = getPlayerSkillLevel(cid, 5)
		doPlayerAddSkillTry(cid, 5, skillTries)
		local skillAfterShield = getPlayerSkillLevel(cid, 5)
	
		local hour_trained = 0
		local minutes_trained = 0
		local seconds_trained = secondsTrained
		while (seconds_trained >= 60) do
			minutes_trained = minutes_trained + 1
			seconds_trained = seconds_trained - 60
		end
		while (minutes_trained >= 60) do
			hour_trained = hour_trained + 1
			minutes_trained = minutes_trained - 60
		end
		
		local msg = ""
		if hour_trained > 0 and minutes_trained > 0 and seconds_trained > 0 then
			msg = "During your absence you trained for "..hour_trained.." hour , "..minutes_trained.." minutes and "..seconds_trained.." seconds."
		elseif hour_trained > 0 and minutes_trained > 0 and seconds_trained <= 0 then
			msg = "During your absence you trained for "..hour_trained.." hour and "..minutes_trained.." minutes."
		elseif hour_trained > 0 and minutes_trained <= 0 and seconds_trained > 0 then
			msg = "During your absence you trained for "..hour_trained.." hour and "..seconds_trained.." seconds."
		elseif hour_trained > 0 and minutes_trained <= 0 and seconds_trained <= 0 then
			msg = "During your absence you trained for "..hour_trained.." hour."
		elseif hour_trained <= 0 and minutes_trained > 0 and seconds_trained > 0 then
			msg = "During your absence you trained for "..minutes_trained.." minutes and "..seconds_trained.." seconds."
		elseif hour_trained <= 0 and minutes_trained > 0 and seconds_trained <= 0 then
			msg = "During your absence you trained for "..minutes_trained.." minutes."
		elseif hour_trained <= 0 and minutes_trained <= 0 and seconds_trained > 0 then
			msg = "During your absence you trained for "..seconds_trained.." seconds."
		end
	
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, msg)
		if skillBefore == skillAfter then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Your ".. skillNames[skill] .." skill not changed.")
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Your ".. skillNames[skill] .." skill changed from level ".. skillBefore.."  to level ".. skillAfter ..".")
		end		
		if skillBeforeShield == skillAfterShield then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Your Shielding skill not changed.")
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "Your Shielding skill changed from level ".. skillBeforeShield.."  to level ".. skillAfterShield ..". ")
		end
		
	else
		local time_gain = getPlayerStorageValue(cid, storage_time_offline)
		local secondsGain = (((os.time()-time_gain)/60)*2)	
		local offNow = OfflineTraining_getTime(cid) 
		if seconds_gain_new == 0 then
			if offNow < 720 then
				if (offNow + secondsGain) <= 720 then
					OfflineTraining_addTime(cid, secondsGain)
				else
					OfflineTraining_setTime(cid, 720)
				end
			end
		else
			seconds_gain_new = seconds_gain_new/60*2
			if offNow < 720 then
				if (offNow + secondsGain) <= 720 then
					OfflineTraining_addTime(cid, seconds_gain_new)
				else
					OfflineTraining_setTime(cid, 720)
				end
			end
		end
	end
	
	function round(num, idp)
		local mult = 10^(idp or 0)
		return math.floor(num * mult + 0.5) / mult
	end
	doPlayerSetOfflineTrainingSkill(cid, -1)
	return true
end