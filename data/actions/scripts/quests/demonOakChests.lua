function onUse(cid, item, fromPosition, itemEx, toPosition)

        if item.uid == 12901 then
                queststatus = getPlayerStorageValue(cid, 12900)
                if queststatus < 1 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Demon Legs.")
                        doPlayerAddItem(cid, 2495, 1)
                        setPlayerStorageValue(cid, 12900, 1)
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
                end
        elseif item.uid == 12902 then
                queststatus = getPlayerStorageValue(cid, 12900)
                if queststatus < 1 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Rainbow Shield.")
                        doPlayerAddItem(cid, 8905, 1)
                        setPlayerStorageValue(cid, 12900, 1)
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
                end
        elseif item.uid == 12904 then
                queststatus = getPlayerStorageValue(cid, 12900)
                if queststatus < 1 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Spellbook of Ancient Arcana.")
                        doPlayerAddItem(cid, 16112, 1)
                        setPlayerStorageValue(cid, 12900, 1)
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
                end
        elseif item.uid == 12903 then
                queststatus = getPlayerStorageValue(cid, 12900)
                if queststatus < 1 then
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have found a Thorn Spitter.")
                        doPlayerAddItem(cid, 16111, 1)
                        setPlayerStorageValue(cid, 12900, 1)
                else
                        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "It is empty.")
                end
        end
                return TRUE
end