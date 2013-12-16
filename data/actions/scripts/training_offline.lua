local statue = {
	[18488] = SKILL_SWORD,
	[18489] = SKILL_AXE,
	[18490] = SKILL_CLUB,
	[18491] = SKILL_DISTANCE,
	[18492] = SKILL_MAGLEVEL,
}
local storage_time = 968471
     
function onUse(cid, item, fromPosition, itemEx, toPosition)
local premiumDays = getPlayerPremiumDays(cid)
if premiumDays > 0 then
    doPlayerSetOfflineTrainingSkill(cid, statue[item.itemid])
	setPlayerStorageValue(cid, storage_time, os.time()) 
    doRemoveCreature(cid)
else
    doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUNEEDPREMIUMACCOUNT)
end
return true
end
