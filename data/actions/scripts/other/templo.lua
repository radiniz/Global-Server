function onUse(cid, item, frompos, item2, topos)
ppos = getPlayerPosition(cid)
temple = getPlayerMasterPos(cid)
if (getCreatureCondition(cid, CONDITION_INFIGHT) == FALSE) and doPlayerRemoveItem(cid, item.itemid, 0) then
doTeleportThing(cid, temple, TRUE)
doSendMagicEffect(temple,6)
doSendMagicEffect(ppos,66)
else
doPlayerSendCancel(cid,"voce nao pode se teleportar com fight.")
doSendMagicEffect(ppos,2)
end
return 1
end