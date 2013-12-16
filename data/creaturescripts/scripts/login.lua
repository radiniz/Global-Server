function onLogin(cid)
accountManager = "Account Manager"                       
managerCounter = 0

   for i, player in ipairs(getOnlinePlayers()) do
      if accountManager:lower() == player:lower() then             
      managerCounter = managerCounter + 1
      end 
   end

function onLogin(cid)
        if isPlayer(cid) and getPlayerPromotionLevel(cid) == 2 then
                doPlayerSetPromotionLevel(cid, 1)
        end
end
    if isPlayer(cid) then
	setPlayerStorageValue(cid, 100, 1)
end

   if managerCounter >= 3 then
      return false
   end

	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid, "attackguild")	
	registerCreatureEvent(cid, "Arena")
	registerCreatureEvent(cid, "SkullCheck")
	registerCreatureEvent(cid, "demonOakLogout")
	registerCreatureEvent(cid, "demonOakDeath")
        registerCreatureEvent(cid, "Achievements")
	registerCreatureEvent(cid, "PlayerKill")
	registerCreatureEvent(cid, "teleportmonster")
	registerCreatureEvent(cid, "inquisitionPortals")
	registerCreatureEvent(cid, "tasks")
	registerCreatureEvent(cid, "kill")
	registerCreatureEvent(cid, "ArenaKill")
        registerCreatureEvent(cid, "fullmh")
	registerCreatureEvent(cid, "bosseswarzone")
	registerCreatureEvent(cid, "Azerus")
	registerCreatureEvent(cid, "Versperoth")

    if (InitArenaScript ~= 0) then
    InitArenaScript = 1

        for i = 42300, 42309 do
            setGlobalStorageValue(i, 0)
            setGlobalStorageValue(i+100, 0)
        end
    end

    if getPlayerStorageValue(cid, 42309) < 1 then
        for i = 42300, 42309 do
            setPlayerStorageValue(cid, i, 0)
        end
    end

    if getPlayerStorageValue(cid, 42319) < 1 then
        for i = 42310, 42319 do
            setPlayerStorageValue(cid, i, 0)
        end
    end

    if getPlayerStorageValue(cid, 42329) < 1 then
        for i = 42320, 42329 do
            setPlayerStorageValue(cid, i, 0)
        end
    end
    if getPlayerStorageValue(cid, 42355) == -1 then
        setPlayerStorageValue(cid, 42355, 0)
    end
    setPlayerStorageValue(cid, 42350, 0)
    setPlayerStorageValue(cid, 42352, 0)

        return true
end
