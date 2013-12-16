function onAdvance(cid, skill, oldlevel, newlevel)
          
            if(getPlayerStorageValue(cid, 99963) ~= 1 and skill == SKILL__LEVEL and newlevel >= 45) then
                            doPlayerAddItem(cid, 2160, 5)
                            setPlayerStorageValue(cid, 99963, 1)
                            doPlayerSendTextMessage(cid, 22, "You have received 5 crystal coins because you reached level 45")
                            end

            if(getPlayerStorageValue(cid, 99964) ~= 1 and skill == SKILL__LEVEL and newlevel >= 100) then
                            doPlayerAddItem(cid, 2160, 10)
                            setPlayerStorageValue(cid, 99964, 1)
                            doPlayerSendTextMessage(cid, 22, "You have received 5 crystal coins because you reached level 100")
                            end

            if(getPlayerStorageValue(cid, 99965) ~= 1 and skill == SKILL__LEVEL and newlevel >= 150) then
                            doPlayerAddItem(cid, 2160, 15)
                            setPlayerStorageValue(cid, 99965, 1)
                            doPlayerSendTextMessage(cid, 22, "You have received 5 crystal coins because you reached level 150")
                            end

            if(getPlayerStorageValue(cid, 99966) ~= 1 and skill == SKILL__LEVEL and newlevel >= 200) then
                            doPlayerAddItem(cid, 2160, 20)
                            doPlayerAddItem(cid, 13529, 1)
                            setPlayerStorageValue(cid, 99966, 1)
                            doPlayerSendTextMessage(cid, 22, "You have received 5 crystal coins because you reached level 200")
                            end

            if(getPlayerStorageValue(cid, 99967) ~= 1 and skill == SKILL__LEVEL and newlevel >= 250) then
                            doPlayerAddItem(cid, 2160, 30)
                            doPlayerAddItem(cid, 13581, 1)
                            setPlayerStorageValue(cid, 99967, 1)
                            doPlayerSendTextMessage(cid, 22, "You have received 5 crystal coins because you reached level 250")
                            end

            return TRUE
end