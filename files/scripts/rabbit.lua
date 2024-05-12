local npcId = 40001
local haveHealed = false
local personalSpell = 70286
local personalHeal = 635
local personalMessage = "nibble nibble"

local function CastPersonalSpell(eventId, dely, calls, creature)
    creature:CastSpell(creature:GetVictim(), personalSpell, true)
end

local function OnEnterCombat(event, creature, target)
    creature:SendUnitYell(personalMessage, 0)
    creature:RegisterEvent(CastPersonalSpell, 7500, 1)
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

local function OnDamageTaken(event, creature, attacker, damage)
    if(creature:GetHealthPct() < 50 and not haveHealed) then
        creature:CastSpell(creature, personalHeal, true)
        haveHealed = true
    end
end

RegisterCreatureEvent(npcId, 1, OnEnterCombat)
RegisterCreatureEvent(npcId, 2, OnLeaveCombat)
-- RegisterCreatureEvent(npcId, 4, OnDied)
-- RegisterCreatureEvent(npcId, 9, OnDamageTaken)