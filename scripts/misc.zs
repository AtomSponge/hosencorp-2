# Copyright (c) 2015 AtomSponge (mratomsponge@gmail.com)
# All rights reserved.
# 
# You are not permitted to copy, modify, merge, publish,
# distribute, sublicense and/or sell copies of this
# script without my explicit permission whatsoever.

val woolBlack = <minecraft:wool:15>;
val inkSac = <minecraft:dye:0>;

## Natura
recipes.remove(<Natura:Cloud:0>);
recipes.addShapeless(<Natura:Cloud:0> * 2, [<minecraft:feather>, <minecraft:quartz>, <minecraft:glass>]);

## Mekanism
# Disable Digital Miner and Pump
val digitalMiner = <Mekanism:MachineBlock:4>;
val electricPump = <Mekanism:MachineBlock:12>;
digitalMiner.addTooltip(format.red("Use the Ender Quarry instead"));
electricPump.addTooltip(format.red("Use the Ender-Thermic Pump instead"));

# Disable Teleporters
val teleporter = <Mekanism:MachineBlock:11>;
val teleporterFrame = <Mekanism:BasicBlock:7>;
val portableTeleporter = <Mekanism:PortableTeleporter:*>;
recipes.remove(teleporter);
recipes.remove(teleporterFrame);
recipes.remove(portableTeleporter);
val teleporterTooltip = format.red("Use Stargates instead");
teleporter.addTooltip(teleporterTooltip);
teleporterFrame.addTooltip(teleporterTooltip);
portableTeleporter.addTooltip(teleporterTooltip);

# Atomic Disassembler
val atomicDisassembler = <Mekanism:AtomicDisassembler:*>;
val atomicAlloy = <Mekanism:AtomicAlloy>;
val ingotEnderium = <ThermalFoundation:material:76>;
recipes.remove(atomicDisassembler);
recipes.addShaped(atomicDisassembler, [[atomicAlloy, <Mekanism:EnergyTablet:*>, atomicAlloy], [atomicAlloy, <Mekanism:TeleportationCore>, atomicAlloy], [ingotEnderium, <Mekanism:Ingot:0>, ingotEnderium]]);

# Enriched Alloy
val enrichedAlloy = <Mekanism:EnrichedAlloy>;
#mods.mekanism.Infuser.removeRecipe(enrichedAlloy);
#mods.mekanism.Infuser.addRecipe("REDSTONE", 10, <ore:ingotSteel>, enrichedAlloy);

## Weather 2
val weatherDeflector = <weather2:WeatherDeflector>;
recipes.remove(weatherDeflector);
recipes.addShaped(weatherDeflector, [[<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>], [<minecraft:redstone>, <EnderIO:itemMaterial:5>, <minecraft:redstone>], [<minecraft:iron_ingot>, <minecraft:redstone>, <minecraft:iron_ingot>]]);
recipes.remove(<weather2:WeatherMachine>);

## Extra Utilities
val enderQuarry = <ExtraUtilities:enderQuarry>;
val enderThermicPump = <ExtraUtilities:enderThermicPump>;
val enderInfusedObsidian = <ExtraUtilities:decorativeBlock1:1>;
val enderCore = <ExtraUtilities:decorativeBlock1:11>;
val computationalMatrix = <ExtraUtilities:decorativeBlock1:12>;

# Ender Quarry
recipes.remove(enderQuarry);
recipes.addShaped(enderQuarry, [[enderCore, <minecraft:sapling>, enderCore], [computationalMatrix, <ThermalFoundation:Storage:12>, computationalMatrix], [enderThermicPump, <Mekanism:AtomicDisassembler:*>, enderThermicPump]]);

# Ender-Thermic Pump
recipes.remove(enderThermicPump);
recipes.addShaped(enderThermicPump, [[enderInfusedObsidian, <Mekanism:ReinforcedAlloy>, enderInfusedObsidian], [<minecraft:lava_bucket>, <minecraft:ender_eye>, <minecraft:water_bucket>], [enderInfusedObsidian, <minecraft:diamond_pickaxe>, enderInfusedObsidian]]);

## Flan's Mod
val blockSteel = <ore:blockSteel>;
recipes.remove(<flansmod:gunBox.modern>);
recipes.addShaped(<flansmod:gunBox.modern>, [[blockSteel, blockSteel, blockSteel], [<Mekanism:ElectricBow:*>, <minecraft:diamond_sword>, <Mekanism:ElectricBow:*>], [blockSteel, blockSteel, blockSteel]]);

## Botany
# Change Iron Trowel recipe, overrides Iron Chisel
recipes.remove(<Botany:trowelIron>);
recipes.addShaped(<Botany:trowelIron>, [[<minecraft:stick>, <minecraft:iron_ingot>]]);

# Change Diamond Trowel recipe, overrides Diamond Chisel
recipes.remove(<Botany:trowelDiamond>);
recipes.addShaped(<Botany:trowelDiamond>, [[<minecraft:stick>, <minecraft:diamond>]]);

## Extra Utilities
# Blackout curtains
recipes.remove(<ExtraUtilities:curtains>);
recipes.addShaped(<ExtraUtilities:curtains> * 12, [[woolBlack, inkSac, woolBlack], [woolBlack, inkSac, woolBlack], [woolBlack, inkSac, woolBlack]]);

## Mariculture
# Vat
recipes.remove(<Mariculture:machines_multi_rendered:3>);
recipes.addShaped(<Mariculture:machines_multi_rendered:3>, [[<ore:ingotCopper>, null, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], [<minecraft:obsidian>, null, <minecraft:obsidian>]]);

## "Cheaty" chunkloaders
val chickenChunkLoader = <ChickenChunks:chickenChunkLoader:*>;
val mfrChunkLoader = <MineFactoryReloaded:machine.2:10>;
recipes.remove(chickenChunkLoader);
recipes.remove(mfrChunkLoader);
chickenChunkLoader.addTooltip(format.red("Use personal/world anchors instead"));
mfrChunkLoader.addTooltip(format.red("Use personal/world anchors instead"));

## Minecraft
# Rails
val railStandard = <Railcraft:part.rail:0>;
val railbedWooden = <Railcraft:part.railbed:0>;
recipes.remove(<minecraft:rail:*>);
recipes.addShaped(<minecraft:rail> * 32, [[railStandard, null, railStandard], [railStandard, railbedWooden, railStandard], [railStandard, null, railStandard]]);