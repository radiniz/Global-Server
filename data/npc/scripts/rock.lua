local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()							npcHandler:onThink()                    	end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- Runas
shopModule:addBuyableItem({'avalanche rune'}, 2274, 45, 'avalanche rune')
shopModule:addBuyableItem({'blank rune'}, 2260, 10, 'blank rune')
shopModule:addBuyableItem({'chameleon rune'}, 2291, 210, 'chameleon rune')
shopModule:addBuyableItem({'convince creature rune'}, 2290, 80, 'convince creature rune')
shopModule:addBuyableItem({'cure poison rune'}, 2266, 65, 'cure poison rune')
shopModule:addBuyableItem({'destroy field rune'}, 2261, 15, 'destroy field rune')
shopModule:addBuyableItem({'energy field rune'}, 2277, 38, 'energy field')
shopModule:addBuyableItem({'energy wall rune'}, 2279, 85, 'energy wall rune')
shopModule:addBuyableItem({'explosion rune'}, 2313, 31, 'explosion rune')
shopModule:addBuyableItem({'fire bomb rune'}, 2305, 117, 'fire bomb rune')
shopModule:addBuyableItem({'fire field rune'}, 2301, 28, 'fire field rune')
shopModule:addBuyableItem({'fire wall rune'}, 2303, 61, 'fire wall rune')
shopModule:addBuyableItem({'great fireball rune'}, 2304, 45, 'great fireball rune')
shopModule:addBuyableItem({'heavy magic missile rune'}, 2311, 12, 'heavy magic missile rune')
shopModule:addBuyableItem({'intense healing rune'}, 2265, 95, 'intense healing rune')
shopModule:addBuyableItem({'light magic missile rune'}, 2287, 4, 'light magic missile rune')
shopModule:addBuyableItem({'poison field rune'}, 2285, 21, 'poison field rune')
shopModule:addBuyableItem({'poison wall rune'}, 2289, 52, 'poison wall rune')
shopModule:addBuyableItem({'stalagmite rune'}, 2292, 12, 'stalagmite rune')
shopModule:addBuyableItem({'sudden death rune'}, 2268, 108, 'sudden death rune')
shopModule:addBuyableItem({'ultimate healing rune'}, 2273, 175, 'ultimate healing rune')

-- Potions
shopModule:addBuyableItem({'great health potion'}, 7591, 190, 'great health potion')
shopModule:addBuyableItem({'great mana potion'}, 7590, 120, 'great mana potion')
shopModule:addBuyableItem({'great spirit potion'}, 8472, 190, 'great spirit potion')
shopModule:addBuyableItem({'health potion'}, 7618, 45, 'health potion')
shopModule:addBuyableItem({'mana potion'}, 7620, 50, 'mana potion')
shopModule:addBuyableItem({'strong health potion'}, 7588, 100, 'strong health potion')
shopModule:addBuyableItem({'strong mana potion'}, 7589, 80, 'strong mana potion')
shopModule:addBuyableItem({'ultimate health potion'}, 8473, 310, 'ultimate health potion')

-- Wands
shopModule:addBuyableItem({'wand of vortex'}, 2190, 500, 'wand of vortex')
shopModule:addBuyableItem({'wand of dragonbreath'}, 2191, 1000, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of decay'}, 2188, 5000, 'wand of decay')
shopModule:addBuyableItem({'wand of cosmic energy'}, 2189, 10000, 'wand of cosmic energy')

-- Rods
shopModule:addBuyableItem({'snakebite rod', 'snakebite'}, 2182, 500, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod', 'moonlight'}, 2186, 1000, 'moonlight rod')
shopModule:addBuyableItem({'necrotic rod', 'necrotic'}, 2185, 5000, 'necrotic rod')
shopModule:addBuyableItem({'terra rod', 'terra'}, 2181, 10000, 'terra rod')

-- Equipamento Local
shopModule:addBuyableItem({'backpack'}, 1988, 9, 'backpack')
shopModule:addBuyableItem({'basket'}, 1989, 6, 'basket')
shopModule:addBuyableItem({'bottle'}, 2007, 3, 'bottle')
shopModule:addBuyableItem({'bucket'}, 2005, 4, 'bucket')
shopModule:addBuyableItem({'candelabrum'}, 2041, 8, 'candelabrum')
shopModule:addBuyableItem({'candlestick'}, 2047, 2, 'candlestick')
shopModule:addBuyableItem({'closed trap'}, 2578, 280, 'strong mana potion')
shopModule:addBuyableItem({'ultimate health potion'}, 8473, 310, 'ultimate health potion')

-- Outros
shopModule:addBuyableItem({'spellbook'}, 2175, 150, 'spellbook')
shopModule:addSellableItem({'empty small potion flask', 'normal flask'}, 7636, 5, 'empty small potion flask')
shopModule:addSellableItem({'empty strong potion flask', 'strong flask'}, 7634, 5, 'empty strong potion flask')
shopModule:addSellableItem({'empty great potion flask', 'great flask'}, 7635, 5, 'empty great potion flask')
shopModule:addSellableItem({'empty vial flask', 'vial'}, 2206, 5, 'empty vial flask')
shopModule:addSellableItem({'spellwand'}, 7735, 299, 'spellwand')

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
end

npcHandler:addModule(FocusModule:new())