-- [( Script created by Doidin and MatheusMkalo for XTibia.com )] -- 
function onSay(cid, words, param, channel) 
 
local config = { 
[1] = {level = 20, valor = 20000}, 
[2] = {level = 20, valor = 20000}, 
[3] = {level = 20, valor = 20000}, 
[4] = {level = 20, valor = 20000}, 
vipsconfig = {onlyvips = "no", storagevip = 13540}, -- Apenas players vips "yes" ou "no" e o storage da vip. 
onlypremmy = "no" -- Apenas players premium accounts "yes" or "no". 
} 
 
if config.onlypremmy == "yes" and not isPremium(cid) then 
return doPlayerSendTextMessage(cid, 18, "Desculpe, apenas para jogadores PREMIUM ACCOUNT.") 
end 
if config.vipsconfig.onlyvips == "yes" and getPlayerStorageValue(cid, config.vipsconfig.storagevip) - os.time() <= 0 then 
return doPlayerSendTextMessage(cid, 18, "Desculpe, apenas para jogadores PREMIUM ACCOUNT.") 
end 
if config[getPlayerVocation(cid)] then 
if getPlayerLevel(cid) >= config[getPlayerVocation(cid)].level then 
if doPlayerRemoveMoney(cid, config[getPlayerVocation(cid)].valor) then 
setPlayerPromotionLevel(cid, 1) 
doPlayerSendTextMessage(cid, 18, "Congratulations, voce foi promovido com sucesso!") 
else 
doPlayerSendTextMessage(cid, 18, "voce precisa de "..config[getPlayerVocation(cid)].valor.." gold coins para se promover!") 
end 
else 
doPlayerSendTextMessage(cid, 18, "Voce precisa esta no level "..config[getPlayerVocation(cid)].level.." para se promover!") 
end 
else 
doPlayerSendTextMessage(cid, 18, "Voce ja tem promotion!") 
end 
return TRUE 
end
