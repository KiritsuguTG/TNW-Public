--- define lua functions 
function NoOp(self, source)
end


function kill(self) -- Kill unit self.
	ExecuteAction("NAMED_KILL", self);
end

function RadiateUncontrollableFear( self )
	ObjectBroadcastEventToEnemies( self, "BeUncontrollablyAfraid", 350 )
end

function RadiateGateDamageFear(self)
	ObjectBroadcastEventToAllies(self, "BeAfraidOfGateDamaged", 200)
end

function OnNeutralGarrisonableBuildingCreated(self)
	ObjectHideSubObjectPermanently( self, "ARMOR", true )
end

function OnGDITechCenterCreated(self)
	ObjectHideSubObjectPermanently( self, "UG_Boost", true )
	ObjectHideSubObjectPermanently( self, "UG_Mortar", true )
	ObjectHideSubObjectPermanently( self, "B_MortarRound_1", true )
	ObjectHideSubObjectPermanently( self, "UG_Rail", true )
	ObjectHideSubObjectPermanently( self, "UG_Scan", true )
end

function OnGDIMedicalBayCreated(self)
	ObjectHideSubObjectPermanently( self, "UG_Armor", true )
	ObjectHideSubObjectPermanently( self, "UG_StealthDetector", true )
	ObjectHideSubObjectPermanently( self, "UG_StealthDetector01", true )
	ObjectHideSubObjectPermanently( self, "UG_Injector", true )
end

function OnGDIPowerPlantCreated(self)
	ObjectHideSubObjectPermanently( self, "Turbines", true )
	ObjectHideSubObjectPermanently( self, "TurbineGlows", true )
end

function OnGDIZoneTrooperCreated(self)
	ObjectHideSubObjectPermanently( self, "UGSCANNER", true )
	ObjectHideSubObjectPermanently( self, "UGJUMP", true )
	ObjectHideSubObjectPermanently( self, "UGINJECTOR", true )
end

function OnGDIPredatorCreated(self)
	ObjectHideSubObjectPermanently( self, "UGRAIL_01", true )
end

function OnGDIMammothCreated(self)
	ObjectHideSubObjectPermanently( self, "UGRAIL_01", true )
	ObjectHideSubObjectPermanently( self, "UGRAIL_02", true )
	ObjectHideSubObjectPermanently( self, "MuzzleFlash_01", true )
	ObjectHideSubObjectPermanently( self, "MuzzleFlash_02", true )
end

function OnGDIJuggernaughtCreated(self)
	ObjectHideSubObjectPermanently( self, "MuzzleFlash_01", true )
	ObjectHideSubObjectPermanently( self, "MuzzleFlash_02", true )
	ObjectHideSubObjectPermanently( self, "MuzzleFlash_03", true )
	
end

function OnGDIWatchTowerCreated(self)
	ObjectHideSubObjectPermanently( self, "MuzzleFlash_01", true )
	ObjectHideSubObjectPermanently( self, "MuzzleFlash_02", true )
end

function OnGDIFirehawkCreated(self)
	-- bomb load by default.
	ObjectGrantUpgrade( self, "Upgrade_SelectLoad_02" )
	ObjectHideSubObjectPermanently( self, "Plane04", true )
end

function OnGDIPitbullCreated(self)
	ObjectHideSubObjectPermanently( self, "MortorTube", true )
end

function OnGDIOrcaCreated(self)
	ObjectHideSubObjectPermanently( self, "UG_PROBE", true )
end

function OnGDISniperSquadCreated(self)
	ObjectSetObjectStatus( self, "CAN_SPOT_FOR_BOMBARD" )
end

function OnGDIOrcaClipEmpty(self)
	ObjectHideSubObjectPermanently( self, "MISSILE01", true )
end

function OnGDIOrcaClipFull(self)
	ObjectHideSubObjectPermanently( self, "MISSILE01", false )
end

function OnGDIV35Ox_SummonedForVehicleCreated(self)
	ObjectHideSubObjectPermanently( self, "LOADREF", true )
end

function OnNODShredderCreated(self)

end

function OnNODRaiderTankCreated(self)
	ObjectHideSubObjectPermanently( self, "Gun_Upgrade", true )
	ObjectHideSubObjectPermanently( self, "Turret2_Gun", true )
	ObjectHideSubObjectPermanently( self, "Turret2", true )
	ObjectHideSubObjectPermanently( self, "MuzzleFlash_01", true )
	ObjectHideSubObjectPermanently( self, "DOZERBLADE", true )
end

function OnNODAvatarCreated(self)
	ObjectHideSubObjectPermanently( self, "NUBEAM", true )
	ObjectHideSubObjectPermanently( self, "FLAMETANK", true )
	ObjectHideSubObjectPermanently( self, "S_DETECTOR", true )
	ObjectHideSubObjectPermanently( self, "S_GENERATOR", true )
end

function OnNODAvatarGenericEvent(self, data)

	local str = tostring( data )

	if str == "upgrades_copied" then
		ObjectRemoveUpgrade( self, "Upgrade_Veterancy_VETERAN" );
		ObjectRemoveUpgrade( self, "Upgrade_Veterancy_ELITE" );
		ObjectRemoveUpgrade( self, "Upgrade_Veterancy_HEROIC" );
	end
end

function OnNODScorpionBuggyCreated(self)
	ObjectHideSubObjectPermanently( self, "EMP", true )
end

function OnNODVenomCreated(self)
	ObjectHideSubObjectPermanently( self, "SigGen", true )
end

function OnNODTechAssembleyPlantCreated(self)
	ObjectHideSubObjectPermanently( self, "UG_EMP", true )
	ObjectHideSubObjectPermanently( self, "UG_Lasers", true )
	ObjectHideSubObjectPermanently( self, "UG_SigGen", true )
	ObjectHideSubObjectPermanently( self, "UG_DozerBlades", true )
end

function OnNODSecretShrineCreated(self)
	ObjectHideSubObjectPermanently( self, "GLOWS", true )	
	ObjectHideSubObjectPermanently( self, "ConfUpgrd", true )
end

function OnNODSecretShrinePowerOutage(self)	
	if ObjectHasUpgrade( self, "Upgrade_NODConfessorUpgrade" ) == 1 then
		ObjectHideSubObjectPermanently( self, "GLOWS", true )	
	end
end

function OnNODSecretShrinePowerRestored(self)		 
	if ObjectHasUpgrade( self, "Upgrade_NODConfessorUpgrade" ) == 1 then
		ObjectHideSubObjectPermanently( self, "GLOWS", false )	
	end
end


function OnAlliedAntiVehicleInfantryGenericEvent(self, data)
	local str = tostring( data )

	if str == "laser_on" then
		ObjectHideSubObjectPermanently( self, "FX_LASER", false )
	elseif str == "laser_off" then
		ObjectHideSubObjectPermanently( self, "FX_LASER", true )
	end
end

function OnAlliedConstructionYardCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Kiritsugu" then 
ObjectHideSubObjectPermanently( self, "Kiritsugu", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Bansgct" then 
ObjectHideSubObjectPermanently( self, "PlayerBansgct", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Nigshile" then 
ObjectHideSubObjectPermanently( self, "PlayerNigshile", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "GDI" then 
ObjectHideSubObjectPermanently( self, "PlayerGDI", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Raboy" then 
ObjectHideSubObjectPermanently( self, "PlayerRaboy", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "opshijiao" then 
ObjectHideSubObjectPermanently( self, "Playeropshijiao", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "quqilongfei" then 
ObjectHideSubObjectPermanently( self, "Playerquqilongfei", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Smile" then 
ObjectHideSubObjectPermanently( self, "PlayerSmile", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "KasuganoSora" then
ObjectHideSubObjectPermanently( self, "PlayerKasuganoSora", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "lingluofenglin" then 
ObjectHideSubObjectPermanently( self, "Playerlingluofenglin", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "bigpig" then 
ObjectHideSubObjectPermanently( self, "Playerbigpig", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "zrz" then 
ObjectHideSubObjectPermanently( self, "Playerzrz", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Reisen" then 
ObjectHideSubObjectPermanently( self, "PlayerReisen", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "AlanTT" then 
ObjectHideSubObjectPermanently( self, "PlayerAlanTT", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "PdEg" then 
ObjectHideSubObjectPermanently( self, "PlayerPdEg", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "generaltsingshitao" then 
ObjectHideSubObjectPermanently( self, "Playergeneraltsingshitao", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "TR" then 
ObjectHideSubObjectPermanently( self, "PlayerTR", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Inkian" then 
ObjectHideSubObjectPermanently( self, "PlayerInkian", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "inkian" then 
ObjectHideSubObjectPermanently( self, "PlayerInkian", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Furure" then 
ObjectHideSubObjectPermanently( self, "PlayerFurure", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "ForgottenPlace" then 
ObjectHideSubObjectPermanently( self, "PlayerForgottenPlace", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Warspite" then 
ObjectHideSubObjectPermanently( self, "PlayerWarspite", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "fishing" then 
ObjectHideSubObjectPermanently( self, "Playerfishing", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "LisaShirley" then 
ObjectHideSubObjectPermanently( self, "PlayerLisaShirley", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Allied" then 
ObjectHideSubObjectPermanently( self, "PlayerAllied", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "tsingshitao" then 
ObjectHideSubObjectPermanently( self, "Playertsingshitao", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "TetraCalyx" then 
ObjectHideSubObjectPermanently( self, "PlayerTetraCalyx", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Combine" then 
ObjectHideSubObjectPermanently( self, "PlayerCombine", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "111" then 
ObjectHideSubObjectPermanently( self, "Player111", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "BritishBall" then 
ObjectHideSubObjectPermanently( self, "PlayerBritishBall", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "MinazukiShion" then 
ObjectHideSubObjectPermanently( self, "PlayerMinazukiShion", false )
end
end

function OnAlliedBarracksCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end

function OnAlliedAirfieldCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end

function OnAlliedOutPostCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end

function OnAlliedWarFactoryCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end

function OnAlliedNavalYardCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end

function OnJapanNavalYardCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end
function OnSovietAndJapanConstructionYardCreated(self)
	ExecuteAction("SET_CAMERA_CLIP_DEPTH_MULTIPLIER",10)
end

function onCreatedControlPointFunctions(self)
	ObjectHideSubObjectPermanently( self, "TB_CP_ALN", true )
	ObjectHideSubObjectPermanently( self, "TB_CP_GDI", true )
	ObjectHideSubObjectPermanently( self, "TB_CP_NOD", true )
	ObjectHideSubObjectPermanently( self, "LIGHTSF01", true )
	ObjectHideSubObjectPermanently( self, "100", false)
	ObjectHideSubObjectPermanently( self, "75", false)
	ObjectHideSubObjectPermanently( self, "50", false)
	ObjectHideSubObjectPermanently( self, "25", false )
end

function onBuildingPowerOutage(self)
	ObjectHideSubObjectPermanently( self, "LIGHTS", true )
	ObjectHideSubObjectPermanently( self, "FXLIGHTS05", true )
	ObjectHideSubObjectPermanently( self, "FXLIGHTS", true )
	ObjectHideSubObjectPermanently( self, "FXGLOWS", true )
	ObjectHideSubObjectPermanently( self, "FLASHINGLIGHTS", true )
	ObjectHideSubObjectPermanently( self, "MESH01", true )
	ObjectHideSubObjectPermanently( self, "POWERPLANTGLOWS", true )
	ObjectHideSubObjectPermanently( self, "LIGHTL", true )
	ObjectHideSubObjectPermanently( self, "LIGHTR", true )
	ObjectHideSubObjectPermanently( self, "LIGHTS1", true )
	ObjectHideSubObjectPermanently( self, "NBCHEMICALPTE1", true )
	ObjectHideSubObjectPermanently( self, "LINKS", true )
	ObjectHideSubObjectPermanently( self, "MESH28", true )
	ObjectHideSubObjectPermanently( self, "TURBINEGLOWS", true )
	ObjectHideSubObjectPermanently( self, "GLOWS", true )
end

function onBuildingPowerRestored(self)
	ObjectHideSubObjectPermanently( self, "LIGHTS", false )
	ObjectHideSubObjectPermanently( self, "FXLIGHTS05", false )
	ObjectHideSubObjectPermanently( self, "FXLIGHTS", false )
	ObjectHideSubObjectPermanently( self, "FXGLOWS", false )
	ObjectHideSubObjectPermanently( self, "FLASHINGLIGHTS", false )
	ObjectHideSubObjectPermanently( self, "MESH01", false )
	ObjectHideSubObjectPermanently( self, "POWERPLANTGLOWS", false )
	ObjectHideSubObjectPermanently( self, "LIGHTL", false )
	ObjectHideSubObjectPermanently( self, "LIGHTR", false )
	ObjectHideSubObjectPermanently( self, "LIGHTS1", false )
	ObjectHideSubObjectPermanently( self, "NBCHEMICALPTE1", false )
	ObjectHideSubObjectPermanently( self, "LINKS", false )
	ObjectHideSubObjectPermanently( self, "MESH28", false )
	ObjectHideSubObjectPermanently( self, "TURBINEGLOWS", false )
	ObjectHideSubObjectPermanently( self, "GLOWS", false )
end




function OnGenericJapanBarracksCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end


function OnGenericWarFactoryCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end

function OnGenericJapanBuildingCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_02", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_03", true )
end

function OnNeutralGarrisonableBuildingGenericEvent(self,data)
end

function onCreatedGDIOrcaAirstrike(self)
	ObjectForbidPlayerCommands( self, true )
end

function onCreatedAlienMCVUnpacking(self)
	ObjectForbidPlayerCommands( self, true )
end

function MakeMeAlert(self)
	ObjectEnterAlertState(self)
end

function BecomeUncontrollablyAfraid(self, other)
	if not ObjectTestCanSufferFear(self) then
		return
	end

	ObjectEnterUncontrollableCowerState(self, other)
end

function RadiateTerror(self, other)
	ObjectBroadcastEventToEnemies(self, "BeTerrified", 180)
end
	
function RadiateTerrorEx(self, other, terrorRange)
	ObjectBroadcastEventToEnemies(self, "BeTerrified", terrorRange)
end
	

function BecomeTerrified(self, other)
	ObjectEnterRunAwayPanicState(self, other)
end

function BecomeAfraidOfGateDamaged(self, other)
	if not ObjectTestCanSufferFear(self) then
		return
	end

	ObjectEnterCowerState(self,other)
end


function ChantForUnit(self) -- Used by units to broadcast the chant event to their own side.
	ObjectBroadcastEventToAllies(self, "BeginChanting", 9999)
end

function StopChantForUnit(self) -- Used by units to stop the chant event to their own side.
	ObjectBroadcastEventToAllies(self, "StopChanting", 9999)
end

function SpyMoving(self, other)
	print(ObjectDescription(self).." spying movement of "..ObjectDescription(other));
end

function OnGarrisonableCreated(self)
	ObjectHideSubObjectPermanently( self, "GARRISON01", true )
	ObjectHideSubObjectPermanently( self, "GARRISON02", true )
end

function OnRubbleDropshipCreated(self)
	ObjectHideSubObjectPermanently( self, "Loadref", true )
end

function OnSovietAntiVehicleVehicleTech1Created(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_Athena_Cannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_AutoCannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Big_Cannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Cryo_Weapon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_FlakCannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_FlakMissile", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_GaussCannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Laser_Cannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_PrismCannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Small_Cannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_TeslaCoil", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_V4Rocket_A", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_V4Rocket_Missile", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Waveforce", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_FutureTank", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_GigaFortress", true )
end

function OnAlliedInfantryFightingCreated(self)
	ObjectHideSubObjectPermanently( self, "NUBEAM", true )
	ObjectHideSubObjectPermanently( self, "FLAMETANK", true )
	ObjectHideSubObjectPermanently( self, "S_DETECTOR", true )
	ObjectHideSubObjectPermanently( self, "S_GENERATOR", true )
end


function OnAlliedBaseDefenseCreated(self)

	ObjectHideSubObjectPermanently( self, "Upgrade_Blaster_Rifles", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Engineer", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Flak", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_GoldenGun", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_MachineGun", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_MissileLauncher", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Natasha_Sniper", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Ninja_Star", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Ninja_Turret", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Plasma", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Psyonic", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Psyonic_Turret", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Shotgun", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Speakers", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Tanya_Pistols", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Tesla_Turret", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Tesla", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Turret", true )
	ObjectHideSubObjectPermanently( self, "Tanya", true )
	
end

function OnAlliedAntiAirVehicleTech1Created(self)

	ObjectHideSubObjectPermanently( self, "Upgrade_Blaster_Rifles", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Engineer", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Flak", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_GoldenGun", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_MachineGun", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_MissileLauncher", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Natasha_Sniper", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Ninja_Star", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Ninja_Turret", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Plasma", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Psyonic", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Psyonic_Turret", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Shotgun", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Speakers", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Tanya_Pistols", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Tesla_Turret", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Tesla", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Turret", true )
	ObjectHideSubObjectPermanently( self, "Tanya", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Cryo", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_ArcherMaiden", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_ArcherMaidenString", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Desolator", true )
	
end

function OnAlliedInfantryFightingCreated(self)
	ObjectHideSubObjectPermanently( self, "NUBEAM", true )
	ObjectHideSubObjectPermanently( self, "FLAMETANK", true )
	ObjectHideSubObjectPermanently( self, "S_DETECTOR", true )
	ObjectHideSubObjectPermanently( self, "S_GENERATOR", true )
end

function OnJapanAntiStructureShipCreated(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_01", true )
end

-- this function expects an eventType of 'onDisguiseAs' and checks for various assetIDs, hiding the appropriate subObjects
function OnJapanLightTransportVehicleGenericEvent(self, eventType, data)
	local eTpye = tostring( eventType )
	
	if not eType == "onDisguiseAs" then
		return
	end
	
	local str = tostring( data )
	
	-- this is the assetID of an AlliedAntiAirVehicleTech1
	if str == "3137747290" then
		ObjectHideSubObjectPermanently( self, "Upgrade_Blaster_Rifles", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Engineer", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Flak", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_GoldenGun", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_MachineGun", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_MissileLauncher", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Natasha_Sniper", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Ninja_Star", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Ninja_Turret", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Plasma", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Psyonic", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Psyonic_Turret", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Shotgun", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Speakers", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Tanya_Pistols", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Tesla_Turret", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Tesla", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Turret", true )
		ObjectHideSubObjectPermanently( self, "Tanya", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Cryo", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_ArcherMaiden", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_ArcherMaidenString", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Desolator", true )
	-- this is the assetID of a SovietAntiVehicleVehicleTech1
	elseif str == "2494781707" then
		ObjectHideSubObjectPermanently( self, "Upgrade_Athena_Cannon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_AutoCannon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Big_Cannon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Cryo_Weapon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_FlakCannon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_FlakMissile", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_GaussCannon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Laser_Cannon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_PrismCannon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Small_Cannon", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_TeslaCoil", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_V4Rocket_A", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_V4Rocket_Missile", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_Waveforce", true )	
		ObjectHideSubObjectPermanently( self, "Upgrade_FutureTank", true )
		ObjectHideSubObjectPermanently( self, "Upgrade_GigaFortress", true )
	end
end

function OnGenericWater(self)
	ObjectGrantUpgrade( self, "Upgrade_Water" )
end

function OnGenericJapanStructure(self)
	ObjectGrantUpgrade( self, "JapanStructureAttributeUpgrade" )
end

function OnGenericJapanInfantryBase(self)
	ObjectGrantUpgrade( self, "Upgrade_ObjectDefault" )
end

function OnGenericCreat(self)
	ObjectGrantUpgrade( self, "Upgrade_AlliedAirPower" )
	ObjectGrantUpgrade( self, "Upgrade_JapanNavalPower" )
	ObjectGrantUpgrade( self, "Upgrade_AlliedHighTechnology" )
	ObjectGrantUpgrade( self, "Upgrade_JapanAdvancedMissilePacks" )
	ObjectGrantUpgrade( self, "Upgrade_JapanEnhancedKamikaze" )
	ObjectGrantUpgrade( self, "Upgrade_SovietCrushPuppiesPower" )
	ObjectGrantUpgrade( self, "Upgrade_SovietTerrorDroneEggs" )
	ObjectGrantUpgrade( self, "Upgrade_AlliedLaserUpgrade" )
	ObjectGrantUpgrade( self, "Upgrade_SovietAntiPlus" )
end

function BecomeGrievousLady(self)
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "GrievousLady" then 
ObjectGrantUpgrade( self, "GrievousLadyUpgrade" )
end
end

function OnGenericAINoSuperWeaponLua(self)
	ObjectGrantUpgrade( self, "AINoSuperWeaponEffect" )
end

function OnSuperWeaponWarning(self)
	ExecuteAction("OBJECT_CREATE_RADAR_EVENT", self,  "0")
end

function OnSuperWeaponAdvanceWarning(self)
	ExecuteAction("OBJECT_CREATE_RADAR_EVENT", self,  "1")
end
function OnJapanBossMechaKingWarning(self)
	ExecuteAction("OBJECT_CREATE_RADAR_EVENT", self,  "1")
	ExecuteAction("NAMED_HUNT", self)
end

function OnOBDetectedWarning(self)
	ExecuteAction("OBJECT_CREATE_RADAR_EVENT", self,  "6")
end

function OnGenericNanoCoreFly(self)
	ObjectDoSpecialPower(self, "SpecialPower_Egg_Transform")
end

function OnGenericSubGetInvisibility(self)
	ObjectDoSpecialPower(self, "SpecialPower_GenericSubFirstInvisibility")
end
function OnSpecialSubLoseInvisibility(self)
	ObjectDoSpecialPower(self, "SpecialPower_GenericLoseInvisibility")
end
function OnSubGetInvisibility(self)
	if not ObjectTestModelCondition(self, "USER_1") then
	ObjectDoSpecialPower(self, "SpecialPower_GenericInvisibility")
end
end

function OnGenericGetInvisibility(self)
	ObjectDoSpecialPower(self, "SpecialPower_GenericInvisibility")
end

function OnGenericLoseInvisibility(self)
	if ObjectTestModelCondition(self, "USER_10") then
	ObjectDoSpecialPower(self, "SpecialPower_GenericLoseInvisibility")
	ObjectRemoveUpgrade( self, "Upgrade_CloakingFieldInvisibility" )
end
end

function OnEUAntiVehicleVehicleTech1LoseInvisibility(self)
	ObjectDoSpecialPower(self, "SpecialPower_GenericLoseInvisibility")
	ObjectRemoveUpgrade( self, "Upgrade_CloakingFieldInvisibility" )
end

function OnGenericAttackLoseInvisibility(self)
	if ObjectTestModelCondition(self, "USER_10") then
	ObjectDoSpecialPower(self, "SpecialPower_GenericLoseInvisibility")
	ObjectRemoveUpgrade( self, "Upgrade_CloakingFieldInvisibility" )
end
end

function OnAlliedScoutInfantryFirstGetInvisibility(self)
	if ObjectTestModelCondition(self, "USER_2") then
	ObjectDoSpecialPower(self, "SpecialPower_GenericSubFirstInvisibility")
end
end

function OnAlliedScoutInfantryLoseInvisibility(self)
	if ObjectTestModelCondition(self, "USER_2") then
	ObjectDoSpecialPower(self, "SpecialPower_GenericLoseInvisibility")
end
end

function OnAlliedScoutInfantryGetInvisibility(self)
	if ObjectTestModelCondition(self, "USER_2") then
		ObjectDoSpecialPower(self, "SpecialPower_GenericInvisibility")
end
end

function OnGenericNanoCoreUnpackSp(self)
	ObjectDoSpecialPower(self, "SpecialPower_EggFlyUnpackReplaceSelf")
	ObjectGrantUpgrade( self, "Upgrade_NanoEggFlyDeBug" )
end

function OnPlayerInformation(self)
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Kiritsugu" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Kiritsugu", 45, "PlayerKiritsugu")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Bansgct" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Bansgct", 45, "PlayerBansgct")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Nigshile" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Nigshile", 45, "PlayerNigshile")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "GDI" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:GDI", 45, "PlayerGDI")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Raboy" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Raboy", 45, "PlayerRaboy")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "opshijiao" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:opshijiao", 45, "Playeropshijiao")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "quqilongfei" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:quqilongfei", 45, "Playerquqilongfei")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Smile" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Smile", 45, "PlayerSmile")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "KasuganoSora" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:KasuganoSora", 45, "PlayerKasuganoSora")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "lingluofenglin" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:lingluofenglin", 45, "Playerlingluofenglin")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "bigpig" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:bigpig", 45, "Playerbigpig")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "zrz" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:zrz", 45, "Playerzrz")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Reisen" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Reisen", 45, "PlayerReisen")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "AlanTT" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:AlanTT", 45, "PlayerAlanTT")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "PdEg" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:PdEg", 45, "PlayerPdEg")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "generaltsingshitao" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:generaltsingshitao", 45, "Playergeneraltsingshitao")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "TR" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:TR", 45, "PlayerTR")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Inkian" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Inkian", 45, "PlayerInkian")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "inkian" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Inkian", 45, "PlayerInkian")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Furure" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Furure", 45, "PlayerFurure")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "ForgottenPlace" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:ForgottenPlace", 45, "PlayerForgottenPlace")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Warspite" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Warspite", 45, "PlayerWarspite")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "fishing" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:fishing", 45, "Playerfishing")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "LisaShirley" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:LisaShirley", 45, "PlayerLisaShirley")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Allied" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Allied", 45, "PlayerAllied")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "tsingshitao" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:tsingshitao", 45, "Playertsingshitao")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "TetraCalyx" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:TetraCalyx", 45, "PlayerTetraCalyx")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Flameheart" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Flameheart", 45, "PlayerFlameheart")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Decline" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Decline", 45, "PlayerDecline")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Rling" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Rling", 45, "PlayerRling")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "adaad" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:adaad", 45, "Playeradaad")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Sabbath" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Sabbath", 45, "PlayerSabbath")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "DazzlingRabbit" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:DazzlingRabbit", 45, "PlayerDazzlingRabbit")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "DUYING" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:DUYING", 45, "PlayerDUYING")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "lovetrance" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:lovetrance", 45, "Playerlovetrance")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "xiaohuas" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:xiaohuas", 45, "Playerxiaohuas")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "AlanJack" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:AlanJack", 45, "PlayerAlanJack")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Toumakazusa" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Toumakazusa", 45, "PlayerToumakazusa")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "MURAMUSA" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:MURAMUSA", 45, "PlayerMURAMUSA")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "BaiYanZe" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:BaiYanZe", 45, "PlayerBaiYanZe")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Combine" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:Combine", 45, "PlayerCombine")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "111" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:111", 45, "Player111")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "BritishBall" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:BritishBall", 45, "PlayerBritishBall")
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "MinazukiShion" then 
ExecuteAction("NAMED_SHOW_INFOBOX", self, "SCRIPT:MinazukiShion", 45, "PlayerMinazukiShion")
end
end

function OnStructurePlayerInformation(self)
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Kiritsugu" then 
ObjectHideSubObjectPermanently( self, "Kiritsugu", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Bansgct" then 
ObjectHideSubObjectPermanently( self, "PlayerBansgct", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Nigshile" then 
ObjectHideSubObjectPermanently( self, "PlayerNigshile", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "GDI" then 
ObjectHideSubObjectPermanently( self, "PlayerGDI", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Raboy" then 
ObjectHideSubObjectPermanently( self, "PlayerRaboy", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "opshijiao" then 
ObjectHideSubObjectPermanently( self, "Playeropshijiao", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "quqilongfei" then 
ObjectHideSubObjectPermanently( self, "Playerquqilongfei", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Smile" then 
ObjectHideSubObjectPermanently( self, "PlayerSmile", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "KasuganoSora" then
ObjectHideSubObjectPermanently( self, "PlayerKasuganoSora", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "lingluofenglin" then 
ObjectHideSubObjectPermanently( self, "Playerlingluofenglin", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "bigpig" then 
ObjectHideSubObjectPermanently( self, "Playerbigpig", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "zrz" then 
ObjectHideSubObjectPermanently( self, "Playerzrz", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Reisen" then 
ObjectHideSubObjectPermanently( self, "PlayerReisen", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "AlanTT" then 
ObjectHideSubObjectPermanently( self, "PlayerAlanTT", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "PdEg" then 
ObjectHideSubObjectPermanently( self, "PlayerPdEg", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "generaltsingshitao" then 
ObjectHideSubObjectPermanently( self, "Playergeneraltsingshitao", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "TR" then 
ObjectHideSubObjectPermanently( self, "PlayerTR", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Inkian" then 
ObjectHideSubObjectPermanently( self, "PlayerInkian", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "inkian" then 
ObjectHideSubObjectPermanently( self, "PlayerInkian", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Furure" then 
ObjectHideSubObjectPermanently( self, "PlayerFurure", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "ForgottenPlace" then 
ObjectHideSubObjectPermanently( self, "PlayerForgottenPlace", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Warspite" then 
ObjectHideSubObjectPermanently( self, "PlayerWarspite", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "fishing" then 
ObjectHideSubObjectPermanently( self, "Playerfishing", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "LisaShirley" then 
ObjectHideSubObjectPermanently( self, "PlayerLisaShirley", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Allied" then 
ObjectHideSubObjectPermanently( self, "PlayerAllied", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "tsingshitao" then 
ObjectHideSubObjectPermanently( self, "Playertsingshitao", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "TetraCalyx" then 
ObjectHideSubObjectPermanently( self, "PlayerTetraCalyx", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Flameheart" then 
ObjectHideSubObjectPermanently( self, "PlayerFlameheart", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Decline" then 
ObjectHideSubObjectPermanently( self, "PlayerDecline", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Rling" then 
ObjectHideSubObjectPermanently( self, "PlayerRling", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "adaad" then 
ObjectHideSubObjectPermanently( self, "Playeradaad", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Sabbath" then 
ObjectHideSubObjectPermanently( self, "PlayerSabbath", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "DazzlingRabbit" then 
ObjectHideSubObjectPermanently( self, "PlayerDazzlingRabbit", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "DUYING" then 
ObjectHideSubObjectPermanently( self, "PlayerDUYING", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "lovetrance" then 
ObjectHideSubObjectPermanently( self, "Playerlovetrance", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "xiaohuas" then 
ObjectHideSubObjectPermanently( self, "Playerxiaohuas", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "AlanJack" then 
ObjectHideSubObjectPermanently( self, "PlayerAlanJack", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Toumakazusa" then 
ObjectHideSubObjectPermanently( self, "PlayerToumakazusa", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "MURAMUSA" then 
ObjectHideSubObjectPermanently( self, "PlayerMURAMUSA", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "BaiYanZe" then 
ObjectHideSubObjectPermanently( self, "PlayerBaiYanZe", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "Combine" then 
ObjectHideSubObjectPermanently( self, "PlayerCombine", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "111" then 
ObjectHideSubObjectPermanently( self, "Player111", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "BritishBall" then 
ObjectHideSubObjectPermanently( self, "PlayerBritishBall", false )
end
if strsub(ObjectDescription(self), strfind(ObjectDescription(self),"(",1,true)+1,strfind(ObjectDescription(self),")",1,true)-1) == "MinazukiShion" then 
ObjectHideSubObjectPermanently( self, "PlayerMinazukiShion", false )
end
end

function OnGenericJapanSuperStructure(self)
	ExecuteAction("SHOW_MILITARY_CAPTION", "SCRIPT:JapanSuperStructure", 10)
end

function OnGenericSovietSuperStructure(self)
	ExecuteAction("SHOW_MILITARY_CAPTION", "SCRIPT:SovietSuperStructure", 10)
end

function OnGenericAlliedSuperStructure(self)
	ExecuteAction("SHOW_MILITARY_CAPTION", "SCRIPT:AlliedSuperStructure", 10)
end

function OnGenericSuperStructureUse(self)
ExecuteAction("CAMERA_FOLLOW_NAMED", self, false, 750)
ExecuteAction("ROTATE_CAMERA", 1, 20, 3, 3)
ExecuteAction("NAMED_FLASH_WHITE", self, 60)
ExecuteAction("CAMERA_LETTERBOX_BEGIN")
ExecuteAction("DISABLE_INPUT")
end
function OnGenericSuperStructureOver(self)
ExecuteAction("ENABLE_INPUT")
end
function OnGenericEndGameObject(self)
ExecuteAction("VICTORY")
end
function OnGameStartCreated(self)
	ExecuteAction("SET_CAMERA_CLIP_DEPTH_MULTIPLIER",10)
end
function OnNodInfernoBomberToggleReloadWeapon(self)
	ObjectDoSpecialPower(self, "SpecialPower_ToggleReloadWeapon")
end

function OnNodInfernoBomberBombExplosion(self)
	ObjectCreateAndFireTempWeapon(self, "NodInfernoBomberBombActivateFunctionWeapon")
end

function OnNodInfernoBomberBombVeteranExplosion(self)
	ObjectCreateAndFireTempWeapon(self, "NodInfernoBomberBombActivateFunctionWeapon_Vet")
end

function  OnGenericUnitStopSet(self)
	ExecuteAction("NAMED_STOP", self)
end

function OnGenericVXCrate(self)
	ObjectDoSpecialPower(self, "SpecialPower_JAAVT1_Transform")
end

function OnUnacpkStructureEgg(self)
	ObjectDoSpecialPower(self, "SpecialPower_PackReplaceSelfEgg")
end

function OnGenericSovietStructure(self)
	ObjectGrantUpgrade( self, "JapanStructureAttributeUpgrade" )
	ObjectGrantUpgrade( self, "SideStructure" )
end

function OnUprisingNotReady(self)
	ObjectGrantUpgrade( self, "NotUpgradeUprising" )
	if ObjectTestModelCondition(self, "HEALTH_PERCENT_100") then
	ObjectGrantUpgrade( self, "UprisingOver" )
end
end

function OnJapanBaseDefenseToggle(self)
	ObjectDoSpecialPower(self, "SpecialPower_JapanBaseDefenseTransform")
end

function OnStrategicArmyAntiVehicleVehicleTech1Created(self)
	ObjectHideSubObjectPermanently( self, "Upgrade_Athena_Cannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_AutoCannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Big_Cannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Cryo_Weapon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_FlakCannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_FlakMissile", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_GaussCannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Laser_Cannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_PrismCannon", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_TeslaCoil", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_V4Rocket_A", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_V4Rocket_Missile", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_Waveforce", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_FutureTank", true )
	ObjectHideSubObjectPermanently( self, "Upgrade_GigaFortress", true )
end

function  OnGenericMusicOff(self)
	ExecuteAction("MUSIC_SET_VOLUME", 0)
end

function OnGenericSandBoxOpen(self)
	ExecuteAction("SHOW_MILITARY_CAPTION", "SCRIPT:SandBoxOpen", 10)
end