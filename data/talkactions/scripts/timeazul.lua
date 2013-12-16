local stones = {
{position = {x =685, y = 40, z = 7}, itemid = 1304}, -- x,y.z (coordenadas em seu mapa) itemid (1304 = a pedra cinza)
{position = {x =685, y = 41, z = 7}, itemid = 1304},
{position = {x =685, y = 42, z = 7}, itemid = 1304},
{position = {x =685, y = 43, z = 7}, itemid = 1304},
{position = {x =685, y = 44, z = 7}, itemid = 1304},
{position = {x =601, y = 40, z = 7}, itemid = 1304},
{position = {x =601, y = 41, z = 7}, itemid = 1304},
{position = {x =601, y = 42, z = 7}, itemid = 1304},
{position = {x =601, y = 43, z = 7}, itemid = 1304},
{position = {x =601, y = 44, z = 7}, itemid = 1304},

{position = {x =638, y = 43, z = 7}, itemid = 1353},-- x,y.z (coordenadas em seu mapa) itemid (1353 = a pedra verde)
{position = {x=646, y=42, z=7}, itemid = 1353},

{position = {x=613, y=40, z=7}, itemid = 1354},-- x,y.z (coordenadas em seu mapa) itemid (1354 = a pedra azul)
{position = {x=613, y=41, z=7}, itemid = 1354},
{position = {x=613, y=42, z=7}, itemid = 1354},
{position = {x=613, y=43, z=7}, itemid = 1354},
{position = {x=613, y=44, z=7}, itemid = 1354},
{position = {x=625, y=40, z=7}, itemid = 1354},
{position = {x=625, y=41, z=7}, itemid = 1354},
{position = {x=625, y=42, z=7}, itemid = 1354},
{position = {x=625, y=43, z=7}, itemid = 1354},
{position = {x=625, y=44, z=7}, itemid = 1354},

{position = {x=661, y=42, z=7}, itemid = 1355},-- x,y.z (coordenadas em seu mapa) itemid (1355 = a pedra vermelha)
{position = {x=673, y=42, z=7}, itemid = 1355} --- ATENÇÃO: o ultimo não tem a virgula (,) depois da chave (}).
 
 
 
 
 
 
}
function onSay(cid, words, param, channel)
for _, stone in ipairs(stones) do
local item = getTileItemById(stone.position, stone.itemid)
doCreateItem(stone.itemid, stone.position)
end
return true
end