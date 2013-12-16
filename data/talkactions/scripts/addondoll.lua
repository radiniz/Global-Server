function onSay(cid, words, param)
local femaleOutfits = { ["citizen"]={136}, ["hunter"]={137}, ["mage"]={138}, ["knight"]={139}, ["nobleman"]={140}, ["summoner"]={141}, ["warrior"]={142}, ["barbarian"]={147}, ["druid"]={148}, ["wizard"]={149}, ["oriental"]={150}, ["pirate"]={155}, ["assassin"]={156}, ["beggar"]={157}, ["shaman"]={158}, ["norseman"]={252}, ["nightmare"]={269}, ["jester"]={270}, ["brotherhood"]={279}, ["demonhunter"]={288}, ["yalaharian"]={324}, ["warmaster"]={336}, ["wayfarer"]={366}, ["afflicted"]={431}, ["elementalist"]={433},["insectoid"]={466}, ["deepling"]={464}, ["red baron"]={471}, ["crystal warlord"]={513}, ["soil guardian"]={514} }
local maleOutfits = { ["citizen"]={128}, ["hunter"]={129}, ["mage"]={130}, ["knight"]={131}, ["nobleman"]={132},["summoner"]={133}, ["warrior"]={134}, ["barbarian"]={143}, ["druid"]={144}, ["wizard"]={145}, ["oriental"]={146}, ["pirate"]={151}, ["assassin"]={152}, ["beggar"]={153}, ["shaman"]={154}, ["norseman"]={251}, ["nightmare"]={268}, ["jester"]={273}, ["brotherhood"]={278}, ["demonhunter"]={289}, ["yalaharian"]={325}, ["warmaster"]={335}, ["wayfarer"]={367}, ["afflicted"]={430}, {472}, ["elementalist"]={432},["insectoid"]={465}, ["deepling"]={463}, ["red baron"]={472}, ["crystal warlord"]={512}, ["soil guardian"]={516} }
local msg = {"Comando inválido!", "Voce nao possui Addon Doll!", "Mal Parametro!", "Voce obteve um Addon Full!"}
local param = string.lower(param)

if(getPlayerItemCount(cid, 13581) > 0) then
if(param ~= "" and maleOutfits[param] and femaleOutfits[param]) then
doPlayerRemoveItem(cid, 13581, 1)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[4])
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_GIFT_WRAPS)
if(getPlayerSex(cid) == 0)then
doPlayerAddOutfit(cid, femaleOutfits[param][1], 3)
else
doPlayerAddOutfit(cid, maleOutfits[param][1], 3)
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[1])
end
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, msg[2])
end
end