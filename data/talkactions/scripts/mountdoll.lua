function onSay(cid, words, param)

local mounts = {
["widow queen"] = {price = 0, id = 1},
["racing bird"] = {price = 0, id = 2},
["war bear"] = {price = 0, id = 3},
["black sheep"] = {price = 0, id = 4},
["midnight panther"] = {price = 0, id = 5},
["draptor"] = {price = 0, id = 6},
["titanica"] = {price = 0, id = 7},
["tin lizzard"] = {price = 0, id = 8},
["blazebringer"] = {price = 0, id = 9},
["rapid boar"] = {price = 0, id = 10},
["stampor"] = {price = 0, id = 11},
["undead cavebear"] = {price = 0, id = 12},
["uniwheel"] = {price = 0, id = 15},
["white deer"] = {price = 0, id = 18},
["war draptor"] = {price = 0, id = 24},
["panda"] = {price = 0, id = 19},
["crystal wolf"] = {price = 0, id = 16},
["sandstone scorpion"] = {price = 0, id = 21},
["dromedary"] = {price = 0, id = 20},
["tiger slug"] = {price = 0, id = 14},
["manta"] = {price = 0, id = 28},
["lady bug"] = {price = 0, id = 27},
["donkey"] = {price = 0, id = 13},
["ironblight"] = {price = 0, id = 29},
["magma crawler"] = {price = 0, id = 30},
["dragonling"] = {price = 0, id = 31},
["gnarlhound"] = {price = 0, id = 32},
["red manta"] = {price = 0, id = 33},
["mechanical bird"] = {price = 0, id = 34},
["water buffalo"] = {price = 0, id = 35},
["armoured scorpion"] = {price = 0, id = 36},
["armoured dragonling"] = {price = 0, id = 37},
["armoured cavebear"] = {price = 0, id = 38},
["gravedigger"] = {price = 0, id = 39},
["fire war horse"] = {price = 0, id = 23},
["golden lion"] = {price = 0, id = 41},
["lion"] = {price = 0, id = 42},
["gray horse"] = {price = 0, id = 43}
}

local msg = {"Você pode escolher um: widow queen, racing bird, war bear, black sheep, midnight panther, draptor, titanica, tin lizzard, blazebringer, rapid boar, stampor, undead cavebear, uniwheel, war draptor, fire war horse, crystal wolf, panda, white deer, dromedary, sandstone scorpion, donkey, tiger slug, manta, lady bug, ironblight, dragonling, magma crawler, gnarlhound, red manta, mechanical bird, water buffalo, armoured scorpion, armoured dragonling, armoured cavebear, gravedigger, lion e golden lion.", "Voce nao tem Mountdoll..", "Not A Good Param..", "Mount conquistado com susseso!.","Voce ja tem este mount"}
local param = string.lower(param)
local t = mounts[param]

if(getPlayerItemCount(cid, 13529) > 0) then
if(param ~= "" and t) then
if t and not getPlayerMount(cid, t.id) then
doPlayerRemoveItem(cid, 13529, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[4])
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_GIFT_WRAPS)
doPlayerAddMount(cid, t.id)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[5])
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[1])
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[2])
end
end