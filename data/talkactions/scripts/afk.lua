local function doSendAutoMessage(cid, pos)
local FRASES = {"Away!", "AFK!", "No here!"}
local TEMPO = 5
local npos = getThingPos(cid)

if (isCreature(cid) == TRUE) then
if (pos.x == npos.x) and (pos.y == npos.y) and (pos.z == npos.z) then
doCreatureSay(pos, FRASES[math.random(#FRASES)], 19)
doSendMagicEffect(pos, 59)
addEvent(doSendAutoMessage, TEMPO*1000, cid, npos)
end
end
end

function onSay(cid, words, param)
pos = getThingPos(cid)
doCreatureSay(pos, FRASES[math.random(#FRASES)], 19)
doSendMagicEffect(pos, 59)
addEvent(doSendAutoMessage, TEMPO*1000, cid, pos)
doPlayerSendCancel(cid, "You are in 'Afk' mode.")
return TRUE
end