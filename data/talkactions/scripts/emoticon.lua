function onSay(cid,words)
local emoticons = {
["!:D"] = 183,["!ideia"] = 164,["!?"] = 165,["!..."] = 166,["!enjuado"] = 167,["!:@"] = 168,["!:("] = 169,["!:)"] = 170,["!$"] = 171,["!agua"] = 172,["!!"] = 174,["!yes"] = 175,["!no"] = 176,["!go"] = 177,["!pokeball"] = 178,["!lol"] = 179,["!love"] = 180,["!pikachu"] = 181,["!:|"] = 182,
}
doSendMagicEffect(getCreaturePosition(cid),emoticons[words])
return TRUE
end