# Copyright (c) 2015 AtomSponge (mratomsponge@gmail.com)
# All rights reserved.
# 
# You are not permitted to copy, modify, merge, publish,
# distribute, sublicense and/or sell copies of this
# script without my explicit permission whatsoever.

val yelloriumFuelRod = <BigReactors:YelloriumFuelRod>;
val reactorCasing = <BigReactors:BRReactorPart:0>;
val reactorController = <BigReactors:BRReactorPart:1>;
val reactorControlRod = <BigReactors:BRReactorPart:2>;
val reactorPowerTap = <BigReactors:BRReactorPart:3>;
val reactorAccessPort = <BigReactors:BRReactorPart:4>;
val reactorCoolantPort = <BigReactors:BRReactorPart:5>;
val reactorRedNetPort = <BigReactors:BRReactorPart:6>;
val reactorComputerPort = <BigReactors:BRReactorPart:7>;
val reactorGlass = <BigReactors:BRMultiblockGlass:0>;
val turbineGlass = <BigReactors:BRMultiblockGlass:1>;
val reactorRedstonePort = <BigReactors:BRReactorRedstonePort>;
val turbineHousing = <BigReactors:BRTurbinePart:0>;
val turbineController = <BigReactors:BRTurbinePart:1>;
val turbinePowerPort = <BigReactors:BRTurbinePart:2>;
val turbineFluidPort = <BigReactors:BRTurbinePart:3>;
val turbineRotorBearing = <BigReactors:BRTurbinePart:4>;
val turbineComputerPort = <BigReactors:BRTurbinePart:5>;
val turbineRotorShaft = <BigReactors:BRTurbineRotorPart:0>;
val turbineRotorBlade = <BigReactors:BRTurbineRotorPart:1>;
val cyaniteReprocessor = <BigReactors:BRDevice>;
val ingotYellorium = <BigReactors:BRIngot:0>;
val ingotCyanite = <BigReactors:BRIngot:1>;
val ingotGraphite = <BigReactors:BRIngot:2>;
val ingotBlutonium = <BigReactors:BRIngot:3>;
val dustYellorium = <BigReactors:BRIngot:4>;
val dustCyanite = <BigReactors:BRIngot:5>;
val dustGraphite = <BigReactors:BRIngot:6>;
val dustBlutonium = <BigReactors:BRIngot:7>;
val ingotLudicrite = <BigReactors:BRIngot:8>;
val dustLudicrite = <BigReactors:BRIngot:9>;

val ingotSteel = <ore:ingotSteel>;

recipes.remove(yelloriumFuelRod);
recipes.addShaped(yelloriumFuelRod, [[ingotSteel, ingotGraphite, ingotSteel], [ingotSteel, ingotYellorium, ingotSteel], [ingotSteel, ingotGraphite, ingotSteel]]);
recipes.remove(reactorCasing);
recipes.addShaped(reactorCasing, [[ingotSteel, ingotGraphite, ingotSteel], [ingotGraphite, ingotYellorium, ingotGraphite], [ingotSteel, ingotGraphite, ingotSteel]]);
recipes.remove(reactorController);
recipes.addShaped(reactorController, [[reactorCasing, <OpenComputers:item:1>, reactorCasing], [ingotYellorium, <minecraft:diamond>, ingotYellorium], [reactorCasing, <OpenComputers:item:29>, reactorCasing]]);
recipes.remove(reactorControlRod);
recipes.addShaped(reactorControlRod, [[reactorCasing, ingotGraphite, reactorCasing], [ingotGraphite, <OpenComputers:item:28>, ingotGraphite], [reactorCasing, ingotYellorium, reactorCasing]]);
recipes.remove(reactorPowerTap);
recipes.addShaped(reactorPowerTap, [[reactorCasing, <EnderIO:itemAlloy:5>, reactorCasing], [<EnderIO:itemAlloy:5>, null, <EnderIO:itemAlloy:5>], [reactorCasing, <EnderIO:itemAlloy:5>, reactorCasing]]);
recipes.remove(reactorAccessPort);
recipes.addShaped(reactorAccessPort, [[reactorCasing, null, reactorCasing], [null, <IronChest:BlockIronChest:0>, null], [reactorCasing, <minecraft:piston>, reactorCasing]]);
recipes.remove(reactorCoolantPort);
recipes.addShaped(reactorCoolantPort, [[reactorCasing, null, reactorCasing], [ingotSteel, <minecraft:bucket>, ingotSteel], [reactorCasing, <minecraft:piston>, reactorCasing]]);
recipes.remove(reactorComputerPort);
recipes.addShaped(reactorComputerPort, [[reactorCasing, <OpenComputers:item:11>, reactorCasing], [<minecraft:gold_ingot>, null, <minecraft:gold_ingot>], [reactorCasing, <OpenComputers:adapter>, reactorCasing]]);
recipes.remove(turbineHousing);
recipes.addShaped(turbineHousing, [[ingotSteel, ingotGraphite, ingotSteel], [<minecraft:quartz>, ingotCyanite, <minecraft:quartz>], [ingotSteel, ingotGraphite, ingotSteel]]);
recipes.remove(turbineController);
recipes.addShaped(turbineController, [[turbineHousing, <OpenComputers:item:1>, turbineHousing], [ingotBlutonium, <minecraft:diamond>, ingotBlutonium], [turbineHousing, <OpenComputers:item:29>, turbineHousing]]);
recipes.remove(turbinePowerPort);
recipes.addShaped(turbinePowerPort, [[turbineHousing, <EnderIO:itemAlloy:5>, turbineHousing], [<EnderIO:itemAlloy:5>, null, <EnderIO:itemAlloy:5>], [turbineHousing, <EnderIO:itemAlloy:5>, turbineHousing]]);
recipes.remove(turbineFluidPort);
recipes.addShaped(turbineFluidPort, [[turbineHousing, null, turbineHousing], [ingotSteel, <minecraft:bucket>, ingotSteel], [turbineHousing, <minecraft:piston>, turbineHousing]]);
recipes.remove(turbineComputerPort);
recipes.addShaped(turbineComputerPort, [[turbineHousing, <OpenComputers:item:11>, turbineHousing], [<minecraft:gold_ingot>, null, <minecraft:gold_ingot>], [turbineHousing, <OpenComputers:adapter>, turbineHousing]]);
recipes.remove(turbineRotorShaft);
recipes.addShaped(turbineRotorShaft, [[ingotSteel, ingotCyanite, ingotSteel]]);
recipes.remove(turbineRotorBlade);
recipes.addShaped(turbineRotorBlade, [[ingotCyanite, ingotSteel, ingotSteel]]);
recipes.remove(cyaniteReprocessor);
recipes.addShaped(cyaniteReprocessor, [[reactorCasing, ingotSteel, reactorCasing], [<minecraft:piston>, yelloriumFuelRod, <minecraft:piston>], [reactorCasing, <minecraft:redstone>, reactorCasing]]);
recipes.removeShapeless(ingotCyanite, [ingotYellorium, <minecraft:sand:*>]);