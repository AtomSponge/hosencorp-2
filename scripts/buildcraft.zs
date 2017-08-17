# Copyright (c) 2015 AtomSponge (mratomsponge@gmail.com)
# All rights reserved.
# 
# You are not permitted to copy, modify, merge, publish,
# distribute, sublicense and/or sell copies of this
# script without my explicit permission whatsoever.

# Disable Quarry and Pump
val pump = <BuildCraft|Factory:pumpBlock>;
val quarry = <BuildCraft|Builders:machineBlock>;

recipes.remove(pump);
recipes.remove(quarry);
pump.addTooltip(format.red("Use the Ender-Thermic Pump instead"));
quarry.addTooltip(format.red("Use the Ender Quarry instead")); 

# Mining Well
val miningWell = <BuildCraft|Factory:miningWellBlock>;
val ingotIron = <minecraft:iron_ingot>;

recipes.remove(miningWell);
recipes.addShaped(miningWell, [[ingotIron, <minecraft:redstone>, ingotIron], [ingotIron, <ore:gearIron>, ingotIron], [ingotIron, <minecraft:diamond_pickaxe>, ingotIron]]);