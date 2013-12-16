function onDeath(cid, corpse, deathList, lastHitKiller, mostDamageKiller)
if isPlayer(cid) == TRUE then
if (getPlayerSlotItem(cid, 2).itemid == 2173) and getPlayerSkullType(cid) >= 1 then
doPlayerRemoveItem(cid, 2173, 1)
doCreatureSetDropLoot(cid, false)
doPlayerSetLossSkill(cid, false)
doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, 10)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYAREA)
return TRUE
end
end
return TRUE
end