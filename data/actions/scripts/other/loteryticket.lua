function onUse(cid, item, fromPosition, itemEx, toPosition)

local rand = math.random(0, 11)
local lotteryid = 5957

  if item.itemid == lotteryid then
    if rand < 1 then
  		doCreatureSay(cid, "You have a winning lottery ticket!", TALKTYPE_ORANGE_1)
      doTransformItem(item.uid, item.itemid + 1)
	doSendMagicEffect(fromPosition, CONST_ME_GIFT_WRAPS)
    elseif rand > 2 then
      doCreatureSay(cid, "Sorry, This is not a winning lottery ticket.", TALKTYPE_ORANGE_1)
      doTransformItem(item.uid, item.itemid - 1)
    end
  end
return TRUE
end