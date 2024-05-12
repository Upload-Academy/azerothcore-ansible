-- local npcId = 40000

local function CastFrostbolt(eventId, dely, calls, creature)
    creature:CastSpell(creature:GetVictim(), 11, true)
end

local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell("i pec u!!", 0)
    creature:RegisterEvent(CastFrostbolt, 5000, 3)
end

local function OnLeaveCombat(event, creature)
    creature:RemoveEvents()
end

local function OnDied(event, creature, killer)
    if(killer:GetObjectType() == "Player") then
        killer:SendBroadcastMessage("You killed " ..creature:GetName().."!")
    end
    creature:RemoveEvents()
end

-- RegisterCreatureEvent(npcId, 1, OnEnterCombat)
-- RegisterCreatureEvent(npcId, 2, OnLeaveCombat)
-- RegisterCreatureEvent(npcId, 4, OnDied)