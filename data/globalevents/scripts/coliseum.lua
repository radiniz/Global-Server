local config = {
    semana_mes = "semana",
    days = {2,5,7},
    goblet = 5805, -- id of the gold goblet you'll get when finishing the event.
    rewards = {2195, 2152, 2160}, -- You will get this +  a gold goblet with your name on.
    moneyReward = {2160, 10, 1}, -- second collumn(count) 0 if you don't want money to be used. or a stackable item you want more than 1 of.
    playerCount = 12001, -- Global storage for counting the players left/entered in the event
    teleportActionId = 12008, -- Action id of the teleport needed for the movement script
    teleportPosition = {x = 32364, y = 32233, z = 7, stackpos = 1}, -- Where the teleport will be created
    teleportToPosition = {x = 32143, y = 32202, z = 7}, -- Where the teleport will take you
    teleportId = 1387, -- Id of the teleport
    timeToStartEvent = 10, -- Minutes, after these minutes the teleport will be removed and the event will be declared started
    coliseumName = "event lion", -- Name of the coliseum that should be summoned
	coliseumName2 = "event tiger", -- Name of the coliseum that should be summoned
    playersNeededToStartEvent = 3, -- Players needed before the coliseums can spawn.
   
    -- Should be the same as in the creaturescript!
    -- The coliseums will spawn randomly inside this area
    fromPosition = {x = 32129, y = 32188, z = 7}, -- top left cornor of the playground
    toPosition = {x = 32159, y = 32215, z = 7}, -- bottom right cornor of the playground
        posportoescima={{{x = 32143, y = 32188, z = 7},{x = 32144, y = 32188, z = 7}},{{x = 32144, y = 32215, z = 7},{x = 32145, y = 32215, z = 7}}},
        posportoeslado={{{x = 32131, y = 32202, z = 7},{x = 32131, y = 32201, z = 7}},{{x = 32156, y = 32202, z = 7},{x = 32156, y = 32203, z = 7}}},
        idportaocima = 1547,
        idportaolado = 1546,
        tempoparaabrir = 120, --em segundos
        poslion = {{x = 32142, y = 32187, z = 7},{x = 32130, y = 32201, z = 7},{x = 32146, y = 32216, z = 7}, {x = 32157, y = 32201, z = 7}},
		postigre = {{x = 32142, y = 32187, z = 7},{x = 32129, y = 32203, z = 7},{x = 32143, y = 32216, z = 7}, {x = 32157, y = 32204, z = 7}}
    }


function onTime()
    local time = os.date("*t")
	local asd = config.timeToStartEvent*60
	for x=0,3 do
		local pol = asd + (x*config.tempoparaabrir)
		addEvent(doBroadcastMessage,pol*1000,"The next coliseum gate will open in " .. config.tempoparaabrir .. " seconds! Good luck!",MESSAGE_EVENT_ADVANCE)
	end
    if (config.semana_mes == "semana" and isInArray(config.days,time.wday)) or (config.semana_mes == "mes" and isInArray(config.days,time.day)) or config.semana_mes == "" then
		local tt = config.timeToStartEvent*60000
		for p,u in pairs(config.posportoescima) do
			for a,b in pairs(u) do
				doCreateItem(config.idportaocima,b)
				addEvent(rrport,tt,b,config.idportaocima)
			end
			tt = tt + (config.tempoparaabrir*(p - 1)*1000)
		end
		for p,u in pairs(config.posportoeslado) do
			for a,b in pairs(u) do
				doCreateItem(config.idportaolado,b)
				addEvent(rrport,tt,b,config.idportaolado)
			end
			tt = tt + (config.tempoparaabrir*p*1000)
		end
		
	    local tp = doCreateTeleport(config.teleportId, config.teleportToPosition, config.teleportPosition)
	    doItemSetAttribute(tp, "aid", config.teleportActionId)
	    doBroadcastMessage("Coliseum event starting in " .. config.timeToStartEvent .. " minutes! The teleport will be closed when the event start!", MESSAGE_STATUS_WARNING)
	    setGlobalStorageValue(config.playerCount, 0)
	    addEvent(startEvent2, config.timeToStartEvent * 1000 * 60)
		for _,k in pairs(config.poslion) do
			doCreateMonster(config.coliseumName, k,false)
		end
		for _,k in pairs(config.postigre) do
			doCreateMonster(config.coliseumName2, k,false)
		end
    end
    return TRUE
end

function rrport(pos,id)
	local uid = getTileItemById(pos,id).uid
	doRemoveItem(uid)
end

function startEvent2()
    local get = getThingfromPos(config.teleportPosition)
    if get.itemid == config.teleportId then
        doRemoveItem(get.uid, 1)
    end
    
    local fromp, top = config.fromPosition, config.toPosition

    if getGlobalStorageValue(config.playerCount) >= config.playersNeededToStartEvent then
        doBroadcastMessage("Good luck in the Coliseum event people! The teleport has closed!", MESSAGE_STATUS_WARNING)
        for x = fromp.x, top.x do
            for y = fromp.y, top.y do
                for z = fromp.z, top.z do
                    areapos = {x = x, y = y, z = z, stackpos = 253}
                    getPlayers = getThingfromPos(areapos)
                    if isPlayer(getPlayers.uid) then
                        --doPlayerSendTextMessage(getPlayers.uid, MESSAGE_EVENT_ADVANCE, "The next coliseum gate will open in " .. config.tempoparaabrir .. " seconds! Good luck!")
						pvgaylord2()
						return true
                    end
                end
            end
        end
    else
        doBroadcastMessage("The coliseum event could not start because of to few players participating.\n At least " .. config.playersNeededToStartEvent .. " players is needed!", MESSAGE_STATUS_WARNING)
        for x = fromp.x, top.x do
            for y = fromp.y, top.y do
                for z = fromp.z, top.z do
                    areapos = {x = x, y = y, z = z, stackpos = 253}
                    getPlayers = getThingfromPos(areapos)
                    if isPlayer(getPlayers.uid) then
                        doTeleportThing(getPlayers.uid, getTownTemplePosition(getPlayerTown(getPlayers.uid)), false)
                        doSendMagicEffect(getPlayerPosition(getPlayers.uid), CONST_ME_TELEPORT)
					elseif isMonster(getPlayers.uid) then
							doRemoveCreature(getPlayers.uid)
                    end
                end
            end
        end
    end
end

function spawncoliseum(p)
    if getGlobalStorageValue(config.playerCount) >= 2 then
		if p ~= getGlobalStorageValue(config.playerCount) then
			doBroadcastMessage("There is currently " .. getGlobalStorageValue(config.playerCount) .. " players in the coliseum event!", MESSAGE_STATUS_CONSOLE_RED)
		end
    else
	local fromp, top = config.fromPosition, config.toPosition
        for x = fromp.x, top.x do
            for y = fromp.y, top.y do
                for z = fromp.z, top.z do
                    areapos = {x = x, y = y, z = z, stackpos = 253}
                    cid = getThingfromPos(areapos).uid
                    if isPlayer(cid) then
						doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)), false)
						doBroadcastMessage(getCreatureName(cid)..' has survived at coliseum event!')
						local n = #config.rewards
						if config.moneyReward[3] then
							n = n + 1
						end
						if config.rewards[math.random(1,n)] then
							doPlayerAddItem(cid, items, 1)
						else
							doPlayerAddItem(cid, config.moneyReward[1], config.moneyReward[2])
						end
						doBroadcastMessage(getPlayerName(cid) .. " won the coliseum event! Congratulations!", MESSAGE_STATUS_WARNING)
						local goblet = doPlayerAddItem(cid, config.goblet, 1)
						doItemSetAttribute(goblet, "description", "Awarded to " .. getPlayerName(cid) .. " for winning the coliseum event.")
						doPlayerAddLevel(cid, 1, "You advanced from level " ..getPlayerLevel(cid).. " to level " ..(getPlayerLevel(cid) + 1).. " in Coliseum Event.")
					elseif isMonster(cid) then
						doRemoveCreature(cid)
                    end
                end
            end
        end
    end
end



function pvgaylord2()
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
	local ll = getGlobalStorageValue(config.playerCount)
	if p ~= getGlobalStorageValue(config.playerCount) then
		setGlobalStorageValue(config.playerCount, p)
	end
	spawncoliseum(ll)
	if p < 2 then
		return true
	end
	addEvent(pvgaylord2,300,nil)
end
