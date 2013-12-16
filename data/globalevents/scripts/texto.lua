local config = {
    positions = {
        ["Bem Vindo"] = { x = 32369, y = 32241, z = 7 },
        [" Neox City, Casas e Npcs!"] = { x = 32039, y = 31964, z = 7 },
	["Hunts, Quest, Treiners"] = { x = 32046, y = 31964, z = 7 },
	["Hunts Vip"] = { x = 32066, y = 31934, z = 7 },
	["Treiners"] = { x = 32066, y = 31932, z = 7 },
	["Promotion"] = { x = 32071, y = 31930, z = 7 },
	["Quests"] = { x = 32066, y = 31936, z = 7 }
    }
}


function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 256))
    end
    
    return TRUE
end  