-- [( Script edited by: DoidinMapper )] --
function onLogin(cid)
local pos = {x=32360, y=31782, z=7}
if premium.hasPremium(cid) == TRUE then
if getPlayerStorageValue(cid,10000) ~= 1 then
setPlayerStorageValue(cid,10000,1)
end
elseif vip.hasVip(cid) ~= TRUE and vip.getVip(cid) ~= 0 then
if getPlayerStorageValue(cid,10000) == 1 then
doTeleportThing(cid, pos, TRUE)
if(isInArray({5, 6, 7, 8}, getPlayerVocation(cid))) then  -- id das vocation epic
doPlayerSetVocation(cid,getPlayerVocation(cid)-4)
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your VIP's over!")
doPlayerSendTextMessage(cid,18,"Your VIP's over!")
setPlayerStorageValue(cid,10000,2)
elseif getPlayerStorageValue(cid,10000) == -1 then
setPlayerStorageValue(cid,10000,2)
end
end
return TRUE
end