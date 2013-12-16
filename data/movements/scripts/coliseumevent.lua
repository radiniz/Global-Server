local config = {
    playerCount = 12001, -- Global storage for counting the players in the event
    maxPlayers = 30, -- Max players who can participate
    minLevel = 50
    }
    
function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
if getPlayerLevel(cid) < config.minLevel then
        addEvent(tpBack, 1000, cid, fromPosition)
        doPlayerSendCancel(cid, "You need to be at least level " .. config.minLevel .. ".")
        return false
end
    if getGlobalStorageValue(config.playerCount) < config.maxPlayers then
        setGlobalStorageValue(config.playerCount, getGlobalStorageValue(config.playerCount)+1)
        if getGlobalStorageValue(config.playerCount) == config.maxPlayers then
            doBroadcastMessage("The Coliseum event is now full [" .. getGlobalStorageValue(config.playerCount) .. " players]! The event will soon start.")
        else    
            doBroadcastMessage(getPlayerName(cid) .. " entered the Coliseum event! Currently " .. getGlobalStorageValue(config.playerCount) .. " players have joined!", MESSAGE_STATUS_CONSOLE_RED)
        end    
    else
        addEvent(tpBack, 1000, cid, fromPosition)
        doPlayerSendCancel(cid, "The event is full. There is already " .. config.maxPlayers .. " players participating in the quest.")
        return false
    end
    print(getStorage(config.playerCount) .. " Players in the Coliseum event.")
    return true
end

function tpBack(cid, fromPosition)
    doTeleportThing(cid, fromPosition, true)
    doSendMagicEffect(getPlayerPosition(cid), CONST_ME_TELEPORT)
end