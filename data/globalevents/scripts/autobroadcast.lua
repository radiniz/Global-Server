local messages = {
	"Por favor, reporte bugs e criaturas faltando/npcs/quests no Blackoutkiller.com com imagens e descrição.",
	"Siga as regras para evitar um banimento.",
	"Você tem a possibilidade de doar com cartão de crédito, depósito ou através de boleto bancario no Blackoutkiller.com",
	"Visite o site oficial diariamente para ter uma visão geral das últimas notícias.",
	"Nós não somos aqueles que criam as wars e quests, você é! Convide os amigos, eles só fazem o servidor melhor.",
	"Nunca confie em um amigo durante o jogo em 100%. Às vezes, as aparências enganam.",
	"Convidar amigos para jogar, fazer uma guild, ganhar dinheiro, encontrar itens raros, se tornar uma lenda.",
	"Se você morrer, você perde itens, vida e experiência. Mas se você não caçar, você nunca vai recuperá-los",
	"Jamais deixem items vips dentro das houses, elas podem bugar e os items sumir.",
	"Jamais usem items vip RED SKULL ou BLACK SKULL, deixem nas depots.",
	"Quando alguém ameaçar matá-lo se você não der seus items, não de nada, pois eles podem matá-lo de qualquer maneira.",
	"Gnomebase é uma das novas áreas que voce poderá desfrutar aqui no Blackoutkiller!",
	"Não jogue mochilas vazias no chão, jogue no lixo.",
	"Por favor, pense duas vezes antes de matar um dog. Eles só querem ser seu amigo!"
}

local i = 0
function onThink(interval, lastExecution)
local message = messages[(i % #messages) + 1]
    doBroadcastMessage("Informação: " .. message .. "", MESSAGE_STATUS_CONSOLE_ORANGE)
    i = i + 1
    return TRUE
end