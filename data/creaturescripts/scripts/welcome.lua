function onLogin(cid)

 local storage = getPlayerStorageValue(cid, 1000)
 
 if storage == -1 then
 doPlayerSendTextMessage(cid, 22, "Olá "..getPlayerName(cid).." seja bem vindo ao Wotbr Bom jogo ~ welcome to Wotbr and good game.")
 setPlayerStorageValue(cid, 1000, 1)
 else
 playerpos = getPlayerPosition(cid)
 --doSendMagicEffect(getCreaturePosition(cid), CONST_ME_FIREWORK_BLUE)--
 --doSendAnimatedText(playerpos, "Welcome!", TEXTCOLOR_LIGHTBLUE)--
 doPlayerSendTextMessage(cid, 22, "Bem vindo de volta "..getPlayerName(cid).."!")
 end
return TRUE
end