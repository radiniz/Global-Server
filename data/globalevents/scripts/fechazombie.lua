	-- Inicio das configurações
	local arena_entrada_pos = {x = 168, y = 55, z = 7, stackpos = 2}
	local arenaa_entrada_pos = {x = 169, y = 55, z = 7, stackpos = 2}
	local cor = 22 -- Defina a cor da mensagem (22 = branco)
	local mensagem = "Teleport Zombie Event Fechado."
  -- Fim de Configurações
  
function onTime()
	doBroadcastMessage(mensagem, cor)
	doCreateItem(9485,1,arena_entrada_pos)
	doCreateItem(9485,1,arenaa_entrada_pos)
	return TRUE
end