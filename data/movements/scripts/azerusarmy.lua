function onStepIn(cid, item, position, fromPosition) 

        if item.actionid == 58262 then 
            if getPlayerStorageValue(cid, 10510) == -1 then         
            doCreatureSay(cid, "It seems by defating Azerus you have stopped this army from entering your world! Better leave this gastly place forever.", TALKTYPE_ORANGE_1) 
            setPlayerStorageValue(cid, 10510, 1)
        end 
			if getPlayerSex(cid) == 1 then 
            doPlayerAddOutfit(cid, 324, 0)---yalaharian outfit
			elseif getPlayerSex(cid) == 0 then
            doPlayerAddOutfit(cid, 325, 0)
			end
		end
    return TRUE   
end