# GM Commands

Useful GM commands I use over and over during development and messing around.

## Information

- `.npc info` gives information on the selected NPC

## Death

- `.die` kills a target you have selected

## Items

- `.additem #itemid/[#itemname]/#shift-click-item-link #itemcount`
- `.modify money #copper`

## Skills

- `.setskill #id #level #level` (?)
- `.setskill 762 300 300` (riding 300)

## Teleportation

- `.appear #char`
- `.tele #place`
- `.summon #char`

## Movement

- `.modify speed all #speed` (`#speed` = 5 is good)
- `.modify speed walk #speed` (`#speed` = 5 is good)
- `.modify speed fly #speed` (`#speed` = 5 is good)

## Cheats

- `.cheat *`
- `.learn all *`

## Quests

- `.quest *`
- `.quest remove #id` is a useful one for quest development

## Objects

- `.gobject add #id`
- `.gobject delete #guid`

## NPCs (Creatures)

- `.npc info` gets the info of the current target
- `.npc add #id` (`#id` is the "current entry" in the `npc info` output)

## Macros

Set these up as macros.

### Flying

```
.gm on
.gm fly on
.modify speed all 5
```