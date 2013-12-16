local storage = 10000
local waitStorage = 9000
local playerOwner = 9500
local gradeid = 9485
local castle = {
	[1] = "Honor",
	[2] = "Avarice",
	[3] = "Lust",
	[4] = "Wrath",
	[5] = "Greed",
	[6] = "Vanity",
	[7] = "Pride",
		}
local guildOwner = {
	[1] = 9001,
	[2] = 9002,
	[3] = 9003,
	[4] = 9004,
	[5] = 9005,
	[6] = 9006,
	[7] = 9007
		}

local walls = {
	{ x = 874, y = 847, z = 6, stackpos = STACKPOS_FIRST_ITEM_ABOVE_GROUNDTILE },
	{ x = 875, y = 847, z = 6, stackpos = STACKPOS_FIRST_ITEM_ABOVE_GROUNDTILE }	
		}
function onThink(interval, lastExecution)


		local idcastle = 1
		local castelo = castle[idcastle]
		if castelo then
			broadcastMessage("The war for the " .. castelo .. " castle will begin in 10 minutes!")
			setGlobalStorageValue(waitStorage, idcastle)
			addEvent(waitingMore,  300000)
		else
			broadcastMessage("Error: Cannot found the castle.")	
		end


	return true
end

function endCastle(interval, lastExecution)
	local idcastle = getGlobalStorageValue(storage)
	local namecastle = castle[idcastle]
	local jogador = getGlobalStorageValue(playerOwner)
	local conqueror = getPlayerName(jogador)
	local vish = getPlayerGuildName(jogador)
	local gid = getPlayerGuildId(jogador)
	
	local castleOwner = guildOwner[idcastle]
	setGlobalStorageValue(castleOwner, gid)
	setGlobalStorageValue(storage, 0)
	broadcastMessage("The conqueror of the " .. namecastle .. " castle was " .. conqueror .. ", belonging to the guild " .. vish .. "!")
	for i = 1, table.maxn(walls) do
		doRemoveItem(getThingfromPos(walls[i]).uid)
		doSendMagicEffect(walls[i], CONST_ME_MAGIC_RED)
	end
	return true
end
function goEnd(interval, lastExecution)
	local idcastle = getGlobalStorageValue(storage)
	local namecastle = castle[idcastle]

	broadcastMessage("The war for the " .. namecastle .. " castle will finish in 30 seconds!")
	addEvent(endCastle,  30000)
	return true
end
function willEnd(interval, lastExecution)
	local idcastle = getGlobalStorageValue(storage)
	local namecastle = castle[idcastle]

	broadcastMessage("The war for the " .. namecastle .. " castle will finish in 1 minute!")
	addEvent(goEnd,  30000)
	return true
end
function willFinish(interval, lastExecution)
	local idcastle = getGlobalStorageValue(storage)
	local namecastle = castle[idcastle]
 
	broadcastMessage("The war for the " .. namecastle .. " castle will finish in 5 minutes!")
	addEvent(willEnd,  240000)
	return true
end
	
function startCastle(interval, lastExecution)
	local idcastle = getGlobalStorageValue(waitStorage)
	local namecastle = castle[idcastle]

	setGlobalStorageValue(storage, idcastle)
	setGlobalStorageValue(waitStorage, 0)
	broadcastMessage("The war for the " .. namecastle .. " castle has started!")
	addEvent(willFinish,  3300000)
	for i = 1,table.maxn(walls) do
		doCreateItem(9485, 1, walls[i])
		doSendMagicEffect(walls[i], CONST_ME_MAGIC_GREEN)
	end
	return true
end
	

function waitingMore(interval, lastExecution)

	local idcastle = getGlobalStorageValue(waitStorage)
	local namecastle = castle[idcastle] 

	broadcastMessage("The war for the " .. namecastle .. " castle will begin in 5 minutes!")
	addEvent(startCastle,  300000)
	return true
end

