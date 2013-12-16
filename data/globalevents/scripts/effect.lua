         local text = {
        --X pos,Y pos, Z pos, text
        [1] = {pos = {32374,32233,7}, text = {"DOTA"}},
	   [2] = {pos = {32374,32238,7}, text = {"WoE"}},
	   [3] = {pos = {32364,32233,7}, text = {"Coliseum"}},
	   [4] = {pos = {32364,32239,7}, text = {"Zombie"}},
        }

        local effects = {
        --X pos,Y pos, Z pos, text
        [1] = {pos = {32374,32233,7}, effect = {11}},
	   [2] = {pos = {32374,32238,7}, effect = {11}},
        [3] = {pos = {32364,32233,7}, effect = {11}},
        [4] = {pos = {32364,32239,7}, effect = {11}},
		}

function onThink(interval, lastExecution)
        for _, area in pairs(text) do
                doSendAnimatedText({x=area.pos[1],y=area.pos[2],z=area.pos[3]},area.text[1], math.random(01,255))
        end
        for _, area in pairs(effects) do
                doSendMagicEffect({x=area.pos[1],y=area.pos[2],z=area.pos[3]},area.effect[1])
        end
        return TRUE
end 
