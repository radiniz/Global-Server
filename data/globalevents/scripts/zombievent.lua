local config = {
    semana_mes = "semana",
    days = {2,3,5,7},
    goblet = 5805, -- id of the gold goblet you'll get when finishing the event.
    rewards = {2195, 2152, 2160}, -- You will get this +  a gold goblet with your name on.
    moneyReward = {2160, 10, 1}, -- second collumn(count) 0 if you don't want money to be used. or a stackable item you want more than 1 of.



    playerCount = 2001, -- Global storage for counting the players left/entered in the event
    zombieCount = 2002, -- Global storage for counting the zombies in the event
    teleportActionId = 2008, -- Action id of the teleport needed for the movement script
    teleportPosition = {x = 32364, y = 32239, z = 7, stackpos = 1}, -- Where the teleport will be created
    teleportToPosition = {x = 32324, y = 31957, z = 7}, -- Where the teleport will take you
    teleportId = 1387, -- Id of the teleport
    timeToStartEvent = 1, -- Minutes, after these minutes the teleport will be removed and the event will be declared started
    timeBetweenSpawns = 20, -- Seconds between each spawn of zombie
    zombieName = "event zombie", -- Name of the zombie that should be summoned
    playersNeededToStartEvent = 3, -- Players needed before the zombies can spawn.
    
    -- Should be the same as in the creaturescript!
    -- The zombies will spawn randomly inside this area
    fromPosition = {x = 32326, y = 31955, z = 7}, -- top left cornor of the playground
    toPosition = {x = 32324, y = 31937, z = 7} -- bottom right cornor of the playground
    }

function onTime()
    local time = os.date("*t")
    if (config.semana_mes == "semana" and isInArray(config.days,time.wday)) or (config.semana_mes == "mes" and isInArray(config.days,time.day)) or config.semana_mes == "" then
	    local tp = doCreateTeleport(config.teleportId, config.teleportToPosition, config.teleportPosition)
	    doItemSetAttribute(tp, "aid", config.teleportActionId)
	    doBroadcastMessage("Zombie event starting in " .. config.timeToStartEvent .. " minutes! The teleport will be closed when the event start!", MESSAGE_STATUS_WARNING)
	    setGlobalStorageValue(config.playerCount, 0)
	    setGlobalStorageValue(config.zombieCount, 0)
	    addEvent(startEvent, config.timeToStartEvent * 1000 * 60)
    end
    return TRUE
end

function startEvent()
    local get = getThingfromPos(config.teleportPosition)
    if get.itemid == config.teleportId then
        doRemoveItem(get.uid, 1)
    end
    
    local fromp, top = config.fromPosition, config.toPosition

    if getGlobalStorageValue(config.playerCount) >= config.playersNeededToStartEvent then
        addEvent(spawnZombie, config.timeBetweenSpawns * 1000)
        doBroadcastMessage("Good luck in the zombie event people! The teleport has closed!", MESSAGE_STATUS_WARNING)
        
        for x = fromp.x, top.x do
            for y = fromp.y, top.y do
                for z = fromp.z, top.z do
                    areapos = {x = x, y = y, z = z, stackpos = 253}
                    getPlayers = getThingfromPos(areapos)
                    if isPlayer(getPlayers.uid) then
                        doPlayerSendTextMessage(getPlayers.uid, MESSAGE_EVENT_ADVANCE, "The first zombie will spawn in " .. config.timeBetweenSpawns .. " seconds! Good luck!")
			pvgaylord()
                    end
                end
            end
        end
    else
        doBroadcastMessage("The Zombie event could not start because of to few players participating.\n At least " .. config.playersNeededToStartEvent .. " players is needed!", MESSAGE_STATUS_WARNING)
        for x = fromp.x, top.x do
            for y = fromp.y, top.y do
                for z = fromp.z, top.z do
                    areapos = {x = x, y = y, z = z, stackpos = 253}
                    getPlayers = getThingfromPos(areapos)
                    if isPlayer(getPlayers.uid) then
                        doTeleportThing(getPlayers.uid, getTownTemplePosition(getPlayerTown(getPlayers.uid)), false)
                        doSendMagicEffect(getPlayerPosition(getPlayers.uid), CONST_ME_TELEPORT)
                    end
                end
            end
        end
    end
end

function spawnZombie()
    if getGlobalStorageValue(config.playerCount) >= 2 then
        pos = {x = math.random(config.fromPosition.x, config.toPosition.x), y = math.random(config.fromPosition.y, config.toPosition.y), z = math.random(config.fromPosition.z, config.toPosition.z)}
        doSummonCreature(config.zombieName, pos)
        doSendMagicEffect(pos, CONST_ME_MORTAREA)
        setGlobalStorageValue(config.zombieCount, getGlobalStorageValue(config.zombieCount)+1)
        doBroadcastMessage("A zombie has spawned! There is currently " .. getGlobalStorageValue(config.zombieCount) .. " zombies in the zombie event!", MESSAGE_STATUS_CONSOLE_RED)
        addEvent(spawnZombie, config.timeBetweenSpawns * 1000)
    else
	local fromp, top = config.fromPosition, config.toPosition
        for x = fromp.x, top.x do
            for y = fromp.y, top.y do
                for z = fromp.z, top.z do
                    areapos = {x = x, y = y, z = z, stackpos = 253}
                    cid = getThingfromPos(areapos).uid
                    if isPlayer(cid) then
			doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)), false)
			doBroadcastMessage(getCreatureName(cid)..' has survived at zombie event!')
                  	for _,items in ipairs(config.rewards) do
        	       		doPlayerAddItem(cid, items, 1)
	      		end
             		if config.moneyReward[3] == 1 then
        			doPlayerAddItem(cid, config.moneyReward[1], config.moneyReward[2])
	         	end
                	doBroadcastMessage(getPlayerName(cid) .. " won the Zombie event! Congratulations!", MESSAGE_STATUS_WARNING)
        	        local goblet = doPlayerAddItem(cid, config.goblet, 1)
	                doItemSetAttribute(goblet, "description", "Awarded to " .. getPlayerName(cid) .. " for winning the Zombie event.")
		    elseif isMonster(cid) then
			doRemoveCreature(cid)
                    end
                end
            end
        end
    end
end



function pvgaylord()
	local fromp, top, p, m = config.fromPosition, config.toPosition, 0, 0
	for x = fromp.x, top.x do
            for y = fromp.y, top.y do
                for z = fromp.z, top.z do
                    local areapos = {x = x, y = y, z = z, stackpos = 253}
                    local cid = getThingfromPos(areapos).uid
                    if isPlayer(cid) then
			p = p+1
		    elseif isMonster(cid) then
			m = m+1
                    end
                end
            end
        end
	if p ~= getGlobalStorageValue(config.playerCount) then
		setGlobalStorageValue(config.playerCount, p)
	end
	if p < 2 then
		return true
	end
	addEvent(pvgaylord,100,nil)
end