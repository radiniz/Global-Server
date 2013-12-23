-- TODO: Rewrite this script using fluidtypes from LIQUIDS doc-file,
--		and correct itemid's to recieve the liquids.

local function Eliminar()
local piedra2 = {x = 32260, y = 32791, z = 7, stackpos = 1}
local piedrapos = getThingfromPos(piedra2)
	doRemoveItem(piedrapos.uid, 1)
end

local function reset()
	doTransformItem(getTileItemById({x=32940, y=31457, z=2}, 9242).uid, 9241)
end

local drunk = createConditionObject(CONDITION_DRUNK)
setConditionParam(drunk, CONDITION_PARAM_TICKS, 60000)

local poison = createConditionObject(CONDITION_POISON)
addDamageCondition(poison, 2, 6000, -5)
addDamageCondition(poison, 3, 6000, -4)
addDamageCondition(poison, 5, 6000, -3)
addDamageCondition(poison, 10, 6000, -2)
addDamageCondition(poison, 20, 6000, -1)

local fluidType = {3, 4, 5, 7, 10, 11, 13, 15, 19}
local fluidMessage = {"Aah...", "Urgh!", "Mmmh.", "Aaaah...", "Aaaah...", "Urgh!", "Urgh!", "Aah...", "Urgh!"}
function onUse(cid, item, fromPosition, itemEx, toPosition)
	if itemEx.itemid == 1 then
		if item.type == 0 then
			doPlayerSendCancel(cid, "It is empty.")
		elseif itemEx.uid == cid then
			doChangeTypeItem(item.uid, 0)
			if item.type == 3 or item.type == 15 then
				doTargetCombatCondition(0, cid, drunk, CONST_ME_NONE)
			elseif item.type == 4 then
				doTargetCombatCondition(0, cid, poison, CONST_ME_NONE)
			elseif item.type == 7 then
				doPlayerAddMana(cid, math.random(50, 150))
				doSendMagicEffect(fromPosition, CONST_ME_MAGIC_BLUE)
			elseif item.type == 10 then
				doCreatureAddHealth(cid, 60)
				doSendMagicEffect(fromPosition, CONST_ME_MAGIC_BLUE)
			end
			for i = 0, #fluidType do
				if item.type == fluidType[i] then
					doCreatureSay(cid, fluidMessage[i], TALKTYPE_ORANGE_1)
					return TRUE
				end
			end
			doCreatureSay(cid, "Gulp.", TALKTYPE_ORANGE_1)
		else
			local splash = doCreateItem(2025, item.type, toPosition)
			doChangeTypeItem(item.uid, 0)
			doDecayItem(splash)
		end
	else
		local fluidSource = getFluidSourceType(itemEx.itemid)
		if fluidSource ~= 0 then
			doChangeTypeItem(item.uid, fluidSource)
		elseif item.type == 0 then
			doPlayerSendCancel(cid, "It is empty.")
		else
			if toPosition.x == CONTAINER_POSITION then
				toPosition = getCreaturePosition(cid)
			end
			splash = doCreateItem(2025, item.type, toPosition)
			doChangeTypeItem(item.uid, 0)
			doDecayItem(splash)
		end
	end
local piedra = {x = 32260, y = 32791, z = 7}
		if (item.itemid == 2006 and itemEx.actionid == 18899) then
		if getPlayerStorageValue(cid, 100078) == 14 then
			if fromPosition.x == CONTAINER_POSITION then
				doSendMagicEffect(toPosition, CONST_ME_HOLYAREA)
				doSummonCreature("Pirate Ghost", { x =32257, y =32791, z =7})
				doCreatureSay(cid, "Thud!", TALKTYPE_ORANGE_1, nil, nil, {x=32260, y=32791, z=7})
				setPlayerStorageValue(cid, 100078, 15)
				doPlayerRemoveItem(cid, 2006, 1)
				doCreateItem(8696, 1, piedra)
				addEvent(Eliminar, 20*1000)
			else
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You need hold the item on you.")
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You arent a inquisition member")
		end
	end
	return TRUE
end
