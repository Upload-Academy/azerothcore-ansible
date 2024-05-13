
local COLLECTABLE_CAT_CARRIER_CORNISH_REX = 8486
local COLLECTABLE_CAT_CARRIER_ORANGE_TABBY = 8487
local COLLECTABLE_CAT_CARRIER_SILVER_TABBY = 8488
local COLLECTABLE_CAT_CARRIER_WHITE_KITTEN = 8489
local COLLECTABLE_CAT_CARRIER_SIAMESE = 8490

local function OnGossipHello(event, player, object)
    -- player:GossipClearMenu()
    
    local myGUID = object:GetDBTableGUIDLow()
    local myID = GetGUIDEntry(myGUID)

    if(myID == COLLECTABLE_CAT_CARRIER_CORNISH_REX) then
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_CORNISH_REX)) then
            player.AddItem(COLLECTABLE_CAT_CARRIER_CORNISH_REX, 1)
        end
    end
    
    if(myID == COLLECTABLE_CAT_CARRIER_ORANGE_TABBY) then
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_ORANGE_TABBY)) then
            player.AddItem(COLLECTABLE_CAT_CARRIER_ORANGE_TABBY, 1)
        end
    end
    
    if(myID == COLLECTABLE_CAT_CARRIER_SILVER_TABBY) then
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_SILVER_TABBY)) then
            player.AddItem(COLLECTABLE_CAT_CARRIER_SILVER_TABBY, 1)
        end
    end
    
    if(myID == COLLECTABLE_CAT_CARRIER_WHITE_KITTEN) then
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_WHITE_KITTEN)) then
            player.AddItem(COLLECTABLE_CAT_CARRIER_WHITE_KITTEN, 1)
        end
    end
    
    if(myID == COLLECTABLE_CAT_CARRIER_SIAMESE) then
        if(not player:HasItem(COLLECTABLE_CAT_CARRIER_SIAMESE)) then
            player.AddItem(COLLECTABLE_CAT_CARRIER_SIAMESE, 1)
        end
    end

    object:DespawnOrUnsummon(0)
end

RegisterCreatureGossipEvent(40002, 1, OnGossipHello)
