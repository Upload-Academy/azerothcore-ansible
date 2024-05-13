
local COLLECTABLE_CAT_CARRIER_CORNISH_REX = 8486
local COLLECTABLE_CAT_CARRIER_ORANGE_TABBY = 8487
local COLLECTABLE_CAT_CARRIER_SILVER_TABBY = 8488
local COLLECTABLE_CAT_CARRIER_WHITE_KITTEN = 8489
local COLLECTABLE_CAT_CARRIER_SIAMESE = 8490

local function OnGossipHello(event, player, object)
    player:GossipClearMenu()

    local displayID = object:GetDisplayId()
    player:Say("DisplayID: " .. displayID)
    
    if(displayID == COLLECTABLE_CAT_CARRIER_CORNISH_REX) then
        player:Say("Matched: " .. COLLECTABLE_CAT_CARRIER_CORNISH_REX)
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_CORNISH_REX)) then
            player:Say("Giving player: " .. COLLECTABLE_CAT_CARRIER_CORNISH_REX)
            player.AddItem(COLLECTABLE_CAT_CARRIER_CORNISH_REX, 1)
        end
    end
    
    if(displayID == COLLECTABLE_CAT_CARRIER_ORANGE_TABBY) then
        player:Say("Matched: " .. COLLECTABLE_CAT_CARRIER_ORANGE_TABBY)
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_ORANGE_TABBY)) then
            player:Say("Giving player: " .. COLLECTABLE_CAT_CARRIER_ORANGE_TABBY)
            player.AddItem(COLLECTABLE_CAT_CARRIER_ORANGE_TABBY, 1)
        end
    end
    
    if(displayID == COLLECTABLE_CAT_CARRIER_SILVER_TABBY) then
        player:Say("Matched: " .. COLLECTABLE_CAT_CARRIER_SILVER_TABBY)
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_SILVER_TABBY)) then
            player:Say("Giving player: " .. COLLECTABLE_CAT_CARRIER_SILVER_TABBY)
            player.AddItem(COLLECTABLE_CAT_CARRIER_SILVER_TABBY, 1)
        end
    end
    
    if(displayID == COLLECTABLE_CAT_CARRIER_WHITE_KITTEN) then
        player:Say("Matched: " .. COLLECTABLE_CAT_CARRIER_WHITE_KITTEN)
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_WHITE_KITTEN)) then
            player:Say("Giving player: " .. COLLECTABLE_CAT_CARRIER_WHITE_KITTEN)
            player.AddItem(COLLECTABLE_CAT_CARRIER_WHITE_KITTEN, 1)
        end
    end
    
    if(displayID == COLLECTABLE_CAT_CARRIER_SIAMESE) then
        player:Say("Matched: " .. COLLECTABLE_CAT_CARRIER_SIAMESE)
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_SIAMESE)) then
            player:Say("Giving player: " .. COLLECTABLE_CAT_CARRIER_SIAMESE)
            player.AddItem(COLLECTABLE_CAT_CARRIER_SIAMESE, 1)
        end
    end

    object:CastSpell(nil, 32754, true)
    object:DespawnOrUnsummon(0)
end

RegisterCreatureGossipEvent(40002, 1, OnGossipHello)
