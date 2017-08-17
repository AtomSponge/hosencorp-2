# Copyright (c) 2015 AtomSponge (mratomsponge@gmail.com)
# All rights reserved.
# 
# You are not permitted to copy, modify, merge, publish,
# distribute, sublicense and/or sell copies of this
# script without my explicit permission whatsoever.

val ingotIron = <minecraft:iron_ingot>;
val ingotSteel = <ore:ingotSteel>;
val blockIron = <minecraft:iron_block>;
val blockSteel = <ore:blockSteel>;

val thrusterTier1 = <ore:thrusterTier1>;
thrusterTier1.add(<simplyjetpacks:components:11>); # Thermal Expansion: Leadstone
thrusterTier1.add(<simplyjetpacks:components:21>); # EnderIO: Conductive Iron
val thrusterTier2 = <ore:thrusterTier2>;
thrusterTier2.add(<simplyjetpacks:components:12>); # Thermal Expansion: Hardened
thrusterTier2.add(<simplyjetpacks:components:22>); # EnderIO: Electrical Steel
val thrusterTier3 = <ore:thrusterTier3>;
thrusterTier3.add(<simplyjetpacks:components:13>); # Thermal Expansion: Reinforced
thrusterTier3.add(<simplyjetpacks:components:23>); # EnderIO: Energetic
val thrusterTier4 = <ore:thrusterTier4>;
thrusterTier4.add(<simplyjetpacks:components:14>); # Thermal Expansion: Resonant
thrusterTier4.add(<simplyjetpacks:components:24>); # EnderIO: Vibrant
val thrusterTier5 = <ore:thrusterTier5>;
thrusterTier5.add(<simplyjetpacks:components:15>); # Thermal Expansion: Fluxed
thrusterTier5.add(<simplyjetpacks:components:25>); # EnderIO: Dark Soularium

val gearTier1 = <ThermalFoundation:material:136>;
val gearTier2 = <ThermalFoundation:material:138>;
val gearTier3 = <ThermalFoundation:material:140>;

val rotorBasic = <Mariculture:turbine_copper>;
val rotorIntermediate = <Mariculture:turbine_aluminum>;
val rotorAdvanced = <Mariculture:turbine_titanium>;
val floater = <minecraft:boat>;
val wirelessTransceiver = <WR-CBE|Core:wirelessTransceiver>;

val tnt = <minecraft:tnt>;
val minigun = <flansmod:minigun>;
val machineGun = <ore:machineGun>;
machineGun.add(<flansmod:m249>);
machineGun.add(<flansmod:l86>);
machineGun.add(<flansmod:m60>);
machineGun.add(<flansmod:rpd>);
val rocketLauncherFast = <ore:rocketLauncherFast>;
rocketLauncherFast.add(<flansmod:at4>);
rocketLauncherFast.add(<flansmod:m72law>);
rocketLauncherFast.add(<flansmod:panzerfaust3>);
val rocketLauncherSlow = <ore:rocketLauncherSlow>;
rocketLauncherSlow.add(<flansmod:rpg>);
rocketLauncherSlow.add(<flansmod:stinger>);
val grenadeLauncher = <flansmod:gl6>;

val storage1 = <minecraft:chest>; # 9 Slots
val storage2 = <IronChest:BlockIronChest:0>; # 18 Slots
val storage3 = <IronChest:BlockIronChest:1>; # 27 Slots
val storage4 = <IronChest:BlockIronChest:2>; # 56 Slots

# Disable drafting table, can be used to avoid harder recipes
recipes.remove(<mcheli:drafting_table>);

# Stinger
val fim92 = <mcheli:fim92>;
val fim92rocket = <mcheli:fim92_bullet>;
recipes.remove(fim92);
recipes.remove(fim92rocket);
recipes.addShaped(fim92, [[ingotSteel, <flansmod:flanMW4xScope>, wirelessTransceiver], [null, ingotSteel, wirelessTransceiver], [null, null, ingotSteel]]);
recipes.addShaped(fim92rocket, [[tnt, null, ingotSteel], [null, ingotSteel, ingotSteel], [null, ingotSteel, thrusterTier3]]);

# Fuel
val fuel = <mcheli:fuel>;
recipes.remove(fuel);
recipes.addShaped(fuel.withDamage(600), 
	[[null, ingotSteel, ingotSteel], 
	[ingotSteel, <minecraft:cauldron>, ingotSteel], 
	[ingotSteel, ingotSteel, ingotSteel]]);
fuel.displayName = "Fuel Canister";
fuel.addTooltip(format.gray("Fill this using coal in a crafting grid"));

# UAV Station
val uavStation = <mcheli:uav_station>;
recipes.remove(uavStation);
recipes.addShaped(uavStation, 
	[[ingotSteel, <OpenComputers:screen3>, ingotSteel], 
	[ingotSteel, <OpenComputers:case3>, ingotSteel], 
	[ingotSteel, <BiblioCraft:BiblioSeats>, ingotSteel]]);
uavStation.addTooltip(format.gray("Remote control special drones, helicopters and jets"));

# Target Designator
val targetDesignator = <mcheli:gltd>;
recipes.remove(targetDesignator);
recipes.addShaped(targetDesignator, [[minigun, minigun, minigun], [blockSteel, wirelessTransceiver, blockSteel], [thrusterTier5, thrusterTier5, thrusterTier5]]);

# Chain
val chain = <mcheli:chain>;
recipes.remove(chain);
recipes.addShaped(chain, [[ingotSteel, null, ingotSteel], [ingotSteel, ingotSteel, ingotSteel], [ingotSteel, null, ingotSteel]]);

# Parachute
val parachute = <mcheli:parachute>;
recipes.remove(parachute);
recipes.addShaped(parachute, [[<minecraft:wool:0>, <minecraft:wool:0>, <minecraft:wool:0>], [<minecraft:string>, null, <minecraft:string>], [null, <minecraft:leather_chestplate>, null]]);

# Container
val container = <mcheli:container>;
recipes.remove(container);
recipes.addShaped(container, [[<minecraft:string>, <minecraft:string>, <minecraft:string>], [storage1, ingotIron, storage1], [<minecraft:string>, <minecraft:string>, <minecraft:string>]]);

# Helicopters
val ka29 = <mcheli:ka-29>;
val mh60g = <mcheli:mh-60g>;
val ch47 = <mcheli:ch47>;
val ec665 = <mcheli:ec665>;
val mh6 = <mcheli:mh-6>;
val sh3 = <mcheli:sh-3>;
val ah1z = <mcheli:ah-1z>;
val r44 = <mcheli:robinson_r44>;
val ah6 = <mcheli:ah-6>;
val ka50n = <mcheli:ka50n>;
val r44f = <mcheli:robinson_r44f>;
val mh60l = <mcheli:mh-60l_dap>;
val oh1 = <mcheli:oh-1>;
val uh1c = <mcheli:uh-1c>;
val mi28 = <mcheli:mi28>;
val mi24 = <mcheli:mi-24>;
val fl282 = <mcheli:fl282>;
val ah64 = <mcheli:ah-64>;
val ka27 = <mcheli:ka-27>;
val bell47gf = <mcheli:bell47gf>;
val ka52 = <mcheli:ka52>;
val mh53e = <mcheli:mh-53e>;
val sh60 = <mcheli:sh-60>;
val bell47g = <mcheli:bell47g>;
val bell206l = <mcheli:bell206l>;

recipes.remove(ka29);
recipes.remove(mh60g);
recipes.remove(ch47);
recipes.remove(ec665);
recipes.remove(mh6);
recipes.remove(sh3);
recipes.remove(ah1z);
recipes.remove(r44);
recipes.remove(ah6);
recipes.remove(ka50n);
recipes.remove(r44f);
recipes.remove(mh60l);
recipes.remove(oh1);
recipes.remove(uh1c);
recipes.remove(mi28);
recipes.remove(mi24);
recipes.remove(fl282);
recipes.remove(ah64);
recipes.remove(ka27);
recipes.remove(bell47gf);
recipes.remove(ka52);
recipes.remove(mh53e);
recipes.remove(sh60);
recipes.remove(bell47g);
recipes.remove(bell206l);

recipes.addShaped(ka29, [[null, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, null, minigun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(mh60g, [[null, rotorIntermediate, thrusterTier3], [minigun, storage1, minigun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(ch47, [[rotorIntermediate, thrusterTier3, rotorIntermediate], [minigun, storage4, machineGun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(ec665, [[null, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, null, machineGun], [blockSteel, machineGun, blockSteel]]);
recipes.addShaped(mh6, [[null, rotorIntermediate, thrusterTier2], [blockIron, storage2, blockIron], [null, blockIron, null]]);
recipes.addShaped(sh3, [[null, rotorIntermediate, thrusterTier3], [<minecraft:dye:1>, storage4, machineGun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(ah1z, [[wirelessTransceiver, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, <minecraft:dye:7>, rocketLauncherFast], [blockSteel, machineGun, blockSteel]]);
recipes.addShaped(r44, [[null, rotorIntermediate, thrusterTier2], [blockIron, storage3, blockIron], [null, blockIron, null]]);
recipes.addShaped(ah6, [[null, rotorIntermediate, thrusterTier2], [blockIron, null, blockIron], [rocketLauncherFast, blockIron, minigun]]);
recipes.addShaped(ka50n, [[wirelessTransceiver, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, <minecraft:dye:12>, machineGun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(r44f, [[null, rotorIntermediate, thrusterTier2], [blockIron, storage3, blockIron], [floater, blockIron, floater]]);
recipes.addShaped(r44f, [[floater, r44, floater]]);
recipes.addShaped(mh60l, [[null, rotorIntermediate, thrusterTier3], [minigun, null, minigun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(oh1, [[null, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, null, rocketLauncherFast], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(uh1c, [[null, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, null, minigun], [blockSteel, grenadeLauncher, blockSteel]]);
recipes.addShaped(mi28, [[wirelessTransceiver, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, <mcheli:m18_red>, rocketLauncherFast], [blockSteel, machineGun, blockSteel]]);
recipes.addShaped(mi24, [[wirelessTransceiver, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, null, rocketLauncherFast], [blockSteel, minigun, blockSteel]]);
recipes.addShaped(fl282, [[null, rotorIntermediate, thrusterTier2], [ingotIron, <minecraft:dye:2>, ingotIron], [null, blockIron, null]]);
recipes.addShaped(ah64, [[wirelessTransceiver, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, null, rocketLauncherFast], [blockSteel, machineGun, blockSteel]]);
recipes.addShaped(ka27, [[null, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, storage3, rocketLauncherFast], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(bell47gf, [[null, rotorIntermediate, thrusterTier2], [ingotIron, null, ingotIron], [floater, minigun, floater]]);
recipes.addShaped(bell47gf, [[null, bell47g, null], [floater, minigun, floater]]);
recipes.addShaped(ka52, [[wirelessTransceiver, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, null, machineGun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(mh53e, [[null, rotorIntermediate, thrusterTier3], [minigun, storage4, minigun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(sh60, [[wirelessTransceiver, rotorIntermediate, thrusterTier3], [rocketLauncherSlow, storage3, machineGun], [blockSteel, blockSteel, blockSteel]]);
recipes.addShaped(bell47g, [[null, rotorIntermediate, thrusterTier2], [ingotIron, <minecraft:dye:1>, ingotIron], [null, blockIron, null]]);
recipes.addShaped(bell206l, [[null, rotorIntermediate, thrusterTier2], [ingotIron, storage3, ingotIron], [blockIron, blockIron, blockIron]]);

# Jets and Airplanes
val b2a = <mcheli:b-2a>;
val f1m = <mcheli:f1m>;
val su33 = <mcheli:su-33>;
val n1k1 = <mcheli:n1k1>;
val pzlm18 = <mcheli:pzl-m18>;
val su37 = <mcheli:su37>;
val f35a = <mcheli:f-35a>;
val ac130 = <mcheli:ac-130>;
val fa18f = <mcheli:fa18f>;
val f22a = <mcheli:f22a>;
val an2 = <mcheli:an2>;
val ids = <mcheli:tornado-ids>;
val a10 = <mcheli:a-10>;
val p180 = <mcheli:p180>;
val m33 = <mcheli:macchi_m33>;
val harrier = <mcheli:harrier>;
val f35c = <mcheli:f-35c>;
val md90 = <mcheli:md90>;
val mig29 = <mcheli:mig29>;
val a6m2 = <mcheli:a6m2>;
val harrierEn = <mcheli:harrier_en>;
val f15s = <mcheli:f-15s_mtd>;
val t4 = <mcheli:t-4>;
val cessna = <mcheli:cessna172>;
val f35b = <mcheli:f-35b>;
val us2 = <mcheli:us-2>;
val mc72 = <mcheli:macchi_mc72>;
val emb314 = <mcheli:emb314>;
val mv22 = <mcheli:mv-22>;
val fi167 = <mcheli:fi167>;
val gr4 = <mcheli:tornado-gr4>;
val h8k = <mcheli:h8k>;
val f14d = <mcheli:f14d>;
val b29 = <mcheli:b29>;

recipes.remove(b2a);
recipes.remove(f1m);
recipes.remove(su33);
recipes.remove(n1k1);
recipes.remove(pzlm18);
recipes.remove(su37);
recipes.remove(f35a);
recipes.remove(ac130);
recipes.remove(fa18f);
recipes.remove(f22a);
recipes.remove(an2);
recipes.remove(ids);
recipes.remove(a10);
recipes.remove(p180);
recipes.remove(m33);
recipes.remove(harrier);
recipes.remove(f35c);
recipes.remove(md90);
recipes.remove(mig29);
recipes.remove(a6m2);
recipes.remove(harrierEn);
recipes.remove(f15s);
recipes.remove(t4);
recipes.remove(cessna);
recipes.remove(f35b);
recipes.remove(us2);
recipes.remove(mc72);
recipes.remove(emb314);
recipes.remove(mv22);
recipes.remove(fi167);
recipes.remove(gr4);
recipes.remove(h8k);
recipes.remove(f14d);
recipes.remove(b29);

recipes.addShaped(b2a, [[thrusterTier5, tnt, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, thrusterTier5, rocketLauncherSlow]]);
recipes.addShaped(f1m, [[machineGun, rotorIntermediate, machineGun], [blockSteel, thrusterTier4, blockSteel], [tnt, floater, tnt]]);
recipes.addShaped(su33, [[thrusterTier5, <minecraft:dye:6>, thrusterTier5], [blockSteel, blockSteel, blockSteel], [thrusterTier5, <minecraft:dye:6>, thrusterTier5]]);
recipes.addShaped(n1k1, [[null, rotorIntermediate, blockSteel], [machineGun, rotorIntermediate, machineGun], [machineGun, floater, machineGun]]);
recipes.addShaped(pzlm18, [[floater, rotorBasic, floater], [blockIron, thrusterTier1, blockIron], [ingotIron, storage1, ingotIron]]);
recipes.addShaped(su37, [[thrusterTier5, tnt, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, minigun, rocketLauncherSlow]]);
recipes.addShaped(f35a, [[thrusterTier5, null, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, thrusterTier5, rocketLauncherSlow]]);
recipes.addShaped(ac130, [[rotorAdvanced, blockSteel, rotorAdvanced], [thrusterTier4, blockSteel, thrusterTier4], [rocketLauncherFast, grenadeLauncher, minigun]]);
recipes.addShaped(fa18f, [[thrusterTier5, <minecraft:dye:8>, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, minigun, rocketLauncherSlow]]);
recipes.addShaped(f22a, [[thrusterTier5, thrusterTier5, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, minigun, rocketLauncherSlow]]);
recipes.addShaped(an2, [[floater, rotorBasic, floater], [blockIron, thrusterTier1, blockIron], [ingotIron, null, ingotIron]]);
recipes.addShaped(ids, [[thrusterTier5, <minecraft:dye:8>, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, machineGun, rocketLauncherSlow]]);
recipes.addShaped(a10, [[thrusterTier5, tnt, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherSlow, minigun, rocketLauncherSlow]]);
recipes.addShaped(p180, [[thrusterTier3, <minecraft:dye:15>, thrusterTier3], [rotorIntermediate, blockSteel, rotorIntermediate], [ingotSteel, storage3, ingotSteel]]);
recipes.addShaped(m33, [[null, rotorBasic, null], [thrusterTier1, thrusterTier1, blockIron], [floater, floater, floater]]);
recipes.addShaped(harrier, [[thrusterTier5, <minecraft:dye:7>, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherSlow, minigun, rocketLauncherSlow]]);
recipes.addShaped(f35c, [[thrusterTier5, null, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, thrusterTier5, rocketLauncherFast]]);
recipes.addShaped(md90, [[thrusterTier4, <minecraft:dye:15>, thrusterTier4], [blockSteel, blockSteel, blockSteel], [storage4, storage4, storage4]]);
recipes.addShaped(mig29, [[thrusterTier5, <minecraft:dye:2>, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, minigun, rocketLauncherFast]]);
recipes.addShaped(a6m2, [[null, rotorIntermediate, null], [blockIron, thrusterTier2, blockIron], [machineGun, null, machineGun]]);
recipes.addShaped(harrierEn, [[thrusterTier5, <minecraft:dye:7>, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, minigun, rocketLauncherFast]]);
recipes.addShaped(f15s, [[thrusterTier5, null, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherFast, minigun, rocketLauncherSlow]]);
recipes.addShaped(t4, [[null, thrusterTier5, null], [blockSteel, blockSteel, blockSteel], [ingotSteel, null, ingotSteel]]);
recipes.addShaped(cessna, [[blockIron, rotorBasic, blockIron], [storage1, thrusterTier1, storage1], [floater, null, floater]]);
recipes.addShaped(f35b, [[thrusterTier5, tnt, thrusterTier5], [blockSteel, blockSteel, blockSteel], [rocketLauncherSlow, thrusterTier5, rocketLauncherSlow]]);
recipes.addShaped(us2, [[rotorIntermediate, blockIron, rotorIntermediate], [thrusterTier1, blockIron, thrusterTier1], [storage3, storage3, storage3]]);
recipes.addShaped(mc72, [[null, rotorBasic, null], [blockIron, thrusterTier1, blockIron], [floater, null, floater]]);
recipes.addShaped(emb314, [[null, rotorIntermediate, null], [blockIron, thrusterTier2, blockIron], [machineGun, rocketLauncherFast, minigun]]);
recipes.addShaped(mv22, [[rotorAdvanced, blockSteel, rotorAdvanced], [thrusterTier4, blockSteel, thrusterTier4], [storage2, storage2, storage2]]);
recipes.addShaped(fi167, [[blockIron, rotorBasic, blockIron], [blockIron, thrusterTier1, blockIron], [tnt, machineGun, tnt]]);
recipes.addShaped(gr4, [[thrusterTier5, null, thrusterTier5], [blockSteel, blockSteel, blockSteel], [tnt, rocketLauncherFast, tnt]]);
recipes.addShaped(h8k, [[rotorBasic, blockIron, rotorBasic], [thrusterTier1, blockIron, thrusterTier1], [blockIron, rocketLauncherSlow, blockIron]]);
recipes.addShaped(f14d, [[thrusterTier5, minigun, thrusterTier5], [blockSteel, blockSteel, blockSteel], [tnt, rocketLauncherSlow, tnt]]);
recipes.addShaped(b29, [[rotorIntermediate, blockSteel, rotorIntermediate], [rotorIntermediate, storage4, rotorIntermediate], [machineGun, tnt, machineGun]]);

# UAV
val ah6x = <mcheli:ah-6x>;
val mq8b = <mcheli:mq-8b>;
val mq9 = <mcheli:mq-9>;
val rcGoblin = <mcheli:rc-goblin>;
val rcGoblinBomb = <mcheli:rc-goblin-bomb>;
val mqm170 = <mcheli:mqm170>;
val bqm74e = <mcheli:bqm_74e>;
val x47b = <mcheli:x-47b>;

recipes.remove(ah6x);
recipes.remove(mq8b);
recipes.remove(mq9);
recipes.remove(rcGoblin);
recipes.remove(rcGoblinBomb);
recipes.remove(mqm170);
recipes.remove(bqm74e);
recipes.remove(x47b);

recipes.addShaped(ah6x, [[wirelessTransceiver, rotorIntermediate, thrusterTier4], [rocketLauncherFast, blockSteel, rocketLauncherSlow], [ingotSteel, minigun, ingotSteel]]);
recipes.addShaped(mq8b, [[wirelessTransceiver, rotorIntermediate, thrusterTier4], [rocketLauncherFast, blockSteel, rocketLauncherSlow], [ingotSteel, thrusterTier4, ingotSteel]]);
recipes.addShaped(mq9, [[wirelessTransceiver, blockSteel, rocketLauncherSlow], [rocketLauncherFast, blockSteel, rocketLauncherSlow], [thrusterTier4, rocketLauncherSlow, thrusterTier4]]);
recipes.addShaped(rcGoblin, [[wirelessTransceiver, rotorBasic, thrusterTier1], [null, blockIron, null], [ingotIron, null, ingotIron]]);
recipes.addShaped(rcGoblinBomb, [[wirelessTransceiver, rotorBasic, thrusterTier1], [null, blockIron, tnt], [ingotIron, null, ingotIron]]);
recipes.addShaped(mqm170, [[wirelessTransceiver, rotorBasic, thrusterTier1], [ingotIron, <minecraft:dye:8>, ingotIron], [null, null, null]]);
recipes.addShaped(bqm74e, [[wirelessTransceiver, null, thrusterTier1], [ingotSteel, <minecraft:dye:14>, ingotSteel], [null, null, null]]);
recipes.addShaped(x47b, [[wirelessTransceiver, blockSteel, null], [blockSteel, rocketLauncherSlow, blockSteel], [thrusterTier4, thrusterTier4, thrusterTier4]]);

# Flaks
val cannon127 = <mcheli:12.7>;
val cannon127shield = <mcheli:12.7s>;
val cannon460 = <mcheli:46:*>;
val cannon155 = <mcheli:15.5>;
val type93 = <mcheli:type93_launcher>;
val bofors40 = <mcheli:bofors40mml60>;
val mk32 = <mcheli:mk32>;
val s75 = <mcheli:s-75>;
val machineGun25 = <mcheli:25mmaamg>;
val searam = <mcheli:searam>;
val vads = <mcheli:vads>;
val mk15 = <mcheli:mk15>;
val oto76 = <mcheli:oto76mm>;
val mk29 = <mcheli:sea_sparrow>;
val mim23 = <mcheli:mim-23>;

recipes.remove(cannon127);
recipes.remove(cannon127shield);
recipes.remove(cannon460);
recipes.remove(cannon155);
recipes.remove(type93);
recipes.remove(bofors40);
recipes.remove(mk32);
recipes.remove(s75);
recipes.remove(machineGun25);
recipes.remove(searam);
recipes.remove(vads);
recipes.remove(mk15);
recipes.remove(oto76);
recipes.remove(mk29);
recipes.remove(mim23);

recipes.addShaped(cannon127, [[tnt, machineGun, grenadeLauncher], [null, blockIron, null], [gearTier1, null, gearTier1]]);
recipes.addShaped(cannon127shield, [[tnt, machineGun, grenadeLauncher], [blockIron, blockIron, blockIron], [gearTier1, null, gearTier1]]);
recipes.addShaped(cannon460, [[grenadeLauncher, grenadeLauncher, grenadeLauncher], [blockIron, blockIron, blockIron], [gearTier2, blockIron, gearTier2]]);
recipes.addShaped(cannon155, [[grenadeLauncher, null, grenadeLauncher], [blockIron, blockIron, blockIron], [gearTier1, null, gearTier1]]);
recipes.addShaped(type93, [[null, rocketLauncherFast, null], [blockIron, blockIron, blockIron], [gearTier1, null, gearTier1]]);
recipes.addShaped(bofors40, [[null, machineGun, null], [ingotIron, ingotIron, ingotIron], [ingotIron, gearTier1, ingotIron]]);
recipes.addShaped(mk32, [[null, rocketLauncherFast, null], [ingotIron, ingotIron, ingotIron], [null, gearTier1, null]]);
recipes.addShaped(s75, [[null, rocketLauncherSlow, null], [ingotSteel, blockSteel, ingotSteel], [gearTier3, ingotSteel, gearTier3]]);
recipes.addShaped(machineGun25, [[machineGun, machineGun, machineGun], [ingotIron, blockIron, ingotIron], [null, gearTier2, null]]);
recipes.addShaped(searam, [[rocketLauncherFast, blockSteel, rocketLauncherFast], [null, blockSteel, null], [gearTier3, blockSteel, gearTier3]]);
recipes.addShaped(vads, [[null, minigun, null], [null, blockSteel, null], [null, gearTier3, null]]);
recipes.addShaped(mk15, [[minigun, blockSteel, minigun], [null, blockSteel, null], [gearTier3, blockSteel, gearTier3]]);
recipes.addShaped(oto76, [[null, grenadeLauncher, grenadeLauncher], [blockIron, blockIron, blockIron], [gearTier2, blockIron, gearTier2]]);
recipes.addShaped(mk29, [[rocketLauncherSlow, blockSteel, rocketLauncherSlow], [blockSteel, blockSteel, blockSteel], [gearTier3, blockSteel, gearTier3]]);
recipes.addShaped(mim23, [[null, rocketLauncherSlow, null], [null, blockSteel, null], [blockSteel, gearTier3, blockSteel]]);

