import sys
import os
import time
from fnmatch import fnmatch
import chardet
import tkinter
from tkinter import messagebox
from tkinter import filedialog
from xml.dom.minidom import parse
import xml.dom.minidom
import re

XmlFiles = r"D:\RA3 MODSDK-X\Mods\The New World\Data"
OutPutDir = os.path.dirname(os.path.realpath(__file__))
ReplaceFile = False
if len(sys.argv) > 1:
    ReplaceFile = True
root = tkinter.Tk()
while not os.path.exists(XmlFiles):
    messagebox.showinfo("", "建议先删除mod文件夹中的Civilian BaseObjects APTUI Includes等文件夹")
    XmlFiles = filedialog.askdirectory()
root.destroy()

pattern = "*.xml"
assetType = [
    'TestGameObject',
    'TestTexture',
    'TestTextureCollection',
    'WeaponTemplate',
    'LocomotorTemplate',
    'GameObject',
    'FXParticleSystemTemplate',
    'Weather',
    'ShadowMap',
    'WaterTransparency',
    'WaterSetting',
    'WaterTextureList',
    'UnitAbilityButtonTemplate',
    'PlayerPowerButtonTemplate',
    'Texture',
    'OnDemandTexture',
    'W3DMesh',
    'W3DContainer',
    'W3DHierarchy',
    'W3DAnimation',
    'W3DCollisionBox',
    'ShaderOverride',
    'ArmyDefinition',
    'AIPersonalityDefinition',
    'FXList',
    'ObjectCreationList',
    'ObjectFilterAsset',
    'SpecialPowerTemplate',
    'UpgradeTemplate',
    'SkirmishOpeningMove',
    'AIStateDefinition',
    'AIStrategicStateDefinition',
    'AIStrategicStateName',
    'AIBudgetStateDefinition',
    'AIBuildStateDefinition',
    'AITargetingHeuristic',
    'AIMicroManagerData',
    'GameMap',
    'AttributeModifier',
    'ArmorTemplate',
    'MissionTemplate',
    'CampaignTemplate',
    'CampaignEnumerator',
    'AudioFile',
    'AudioFileMP3Passthrough',
    'PathMusicMap',
    'PathMusicTrack',
    'PathMusicEvent',
    'PathMusicEventSet',
    'PathMusicGameDynamicState',
    'PathMusicGameDynamicStateSet',
    'PathMusicGameDynamicTransition',
    'AudioEvent',
    'MusicTrack',
    'MP3MusicTrack',
    'DialogEvent',
    'MP3DialogEvent',
    'AmbientStream',
    'MP3AmbientStream',
    'Multisound',
    'MusicPalette',
    'MusicScriptConditionNugget_LocalPlayerIsObserver',
    'MusicScriptConditionNugget_UnitsFarFromBase',
    'MusicScriptConditionNugget_TimeFromStartOfLevel',
    'MusicScriptConditionNugget_TrackPlayedCount',
    'MusicScriptConditionNugget_SpecificTrackTypePlaying',
    'MusicScriptConditionNugget_AnyTrackPlaying',
    'MusicScriptConditionNugget_ObjectsOfTypeExist',
    'MusicScriptConditionNugget_EvaEventPlayedRecently',
    'MusicScriptConditionNugget_ObjectsNearEvaEvent',
    'MusicScriptConditionNugget_ScoredKillCount',
    'MusicScriptConditionNugget_PathMusicStateLastActive',
    'MusicScriptConditionNugget_PathMusicStateCurrentlyActive',
    'MusicScriptConditionNugget_EngagementCount',
    'MusicScriptConditionNugget_LocalPlayerKillRatio',
    'MusicScriptConditionNugget_HitBySuperWeapon',
    'MusicScriptConditionNugget_Not',
    'MusicScriptConditionNugget_Or',
    'MusicScriptConditionNugget_And',
    'MusicScriptTrack',
    'LocalBuildListMonitor',
    'MpGameRules',
    'ExperienceLevelTemplate',
    'StringHashTable',
    'DamageFX',
    'MultiplayerSettings',
    'OnlineChatColors',
    'MultiplayerColor',
    'GraphicsHardware',
    'GameLODPreset',
    'StaticGameLOD',
    'DynamicGameLOD',
    'AudioLOD',
    'GiftManagerSettings',
    'Video',
    'VideoEventList',
    'UIConfigList',
    'PackedTextureImage',
    'OnDemandTextureImage',
    'TerrainTextureAtlas',
    'Mouse',
    'StanceTemplate',
    'TargetingCompareList',
    'TargetingDistanceCompare',
    'TargetingCombatChainCompare',
    'TargetingInTurretArcCompare',
    'Road',
    'Environment',
    'LogicCommand',
    'LogicCommandSet',
    'MiscAudio',
    'AnimationSoundSettings',
    'EvaSettings',
    'EvaEvent',
    'SiegeEvaEvent',
    'MiscEvaEvents',
    'AudioSettings',
    'CrowdResponse',
    'MapMetaData',
    'LargeGroupAudioMap',
    'AudioEventLimitGroup',
    'AptAptData',
    'AptConstData',
    'AptDatData',
    'AptGeometryData',
    'MappableKey',
    'HotKeySlot',
    'DefaultHotKeys',
    'DebugHotKeys',
    'GameScriptList',
    'IntelDB',
    'BootupDisplaySequence',
    'UnitTypeIcon',
    'ImageSequence',
    'UnitOverlayIconSettings',
    'TheVersion',
    'InvisibilityTemplate',
    'EmotionTemplate',
    'RegisteredObjectSet',
    'AchievementEvent',
    'MapNameToAchievementEventMapping',
    'AIPersonalityToAchievementEventMapping',
    'GameplayConditionData',
    'GameplayAchievementTriggerData',
    'EngagingContent',
    'EngagingContentGroup',
    'EngagingContentSequence',
    'FontDirectory',
    'ConquerCardDefinitionUnit',
    'ConquerCardDefinitionStructure',
    'ConquerCardDefinitionPower',
    'ConquerCardPrebuiltDeck',
    'DLContent',
    'ConnectionLineManager',
    'PlayerTech',
    'PlayerTechRank',
    'PlayerTechUpgradeBinding',
    'PlayerTemplate',
    'HeaderTemplate',
    'DrawGroupInfo',
    'TerrainAssetCollection',
    'TerrainParticleMapping',
    'BounceKickTerrainMapping',
    'MeshInstanceTemplate',
    'Language',
    'TutorialMapData',
    'TerrainVisualSettings',
    'PathfindSettings',
    'FormationAssistantUnitDefinition',
    'FormationAssistantTemplate',
    'FormationSelectionTemplate',
    'FormationAssistant',
    'FontDefaultSetting',
    'FontTranslation',
    'FontSubstitution',
    'Credits',
    'GeneralHotKeySlots',
    'AIData',
    'MouseCursor',
    'BasicMouseCursors',
    'UIMouseDragSelectionFeedback',
    'UIMouseHUDElementHotKeyGate',
    'UIMouseTacticalAttackMoveButton',
    'UIMouseTacticalBuildQueueTab',
    'UIMouseTacticalBuildQueueTypeTab',
    'UIMouseTacticalCommandAttack',
    'UIMouseTacticalCommandAttackMove',
    'UIMouseTacticalCommandCommunicateWithAllies',
    'UIMouseTacticalCommandDock',
    'UIMouseTacticalCommandEnter',
    'UIMouseTacticalCommandForceAttack',
    'UIMouseTacticalCommandForceMove',
    'UIMouseTacticalCommandGetCrate',
    'UIMouseTacticalCommandHarvest',
    'UIMouseTacticalCommandMineOre',
    'UIMouseTacticalCommandMisc',
    'UIMouseTacticalCommandMove',
    'UIMouseTacticalCommandPlaceAIBeacon',
    'UIMouseTacticalCommandPlaceRallyPoint',
    'UIMouseTacticalCommandPlaceWall',
    'UIMouseTacticalCommandReverseMove',
    'UIMouseTacticalCommandSelect',
    'UIMouseTacticalCommandSell',
    'UIMouseTacticalCommandSetRallyPoint',
    'UIMouseTacticalCommandToggleSelfRepair',
    'UIMouseTacticalDeactivateMissionHotSpotsButton',
    'UIMouseTacticalExitContainerButton',
    'UIMouseTacticalFastForwardButton',
    'UIMouseTacticalForceAttackButton',
    'UIMouseTacticalForceAttackMoveButton',
    'UIMouseTacticalForceMoveButton',
    'UIMouseTacticalGroupSelection',
    'UIMouseTacticalLookAt',
    'UIMouseTacticalMainCommandBarHotKeys',
    'UIMouseTacticalMiscHotKeys',
    'UIMouseTacticalOpenAdvancedCommandsButton',
    'UIMouseTacticalPauseButton',
    'UIMouseTacticalPlanningModeButton',
    'UIMouseTacticalPlayerPowerHotKeys',
    'UIMouseTacticalPlayerTechStoreButton',
    'UIMouseTacticalRadarTelestrator',
    'UIMouseTacticalReverseMoveButton',
    'UIMouseTacticalSelectionDetailsButtonHotKeys',
    'UIMouseTacticalSelectionRefinementTab',
    'UIMouseTacticalSellModeButton',
    'UIMouseTacticalSetStanceButton',
    'UIMouseTacticalStopButton',
    'UIMouseTacticalTelestrator',
    'UIMouseTacticalThreatMeter',
    'UIMouseTacticalToggleRepairModeButton',
    'UIMouseTacticalUnitIntroButton',
    'UIMouseTacticalWaypointModeButton',
    'UIMouseTacticalCoOpAIButtonsAssaultButton',
    'UIMouseTacticalCoOpAIButtonsHelpButton',
    'UIMouseTacticalCoOpAIButtonsHoldObjectButton',
    'UIMouseTacticalCoOpAIButtonsHoldPositionButton',
    'UIMouseTacticalCoOpAIButtonsNormalButton',
    'UIMouseTacticalQuickChatDisplay',
    'UIMouseVoiceChat',
    'UIQuickChatMessage',
    'BreezeInfo',
    'CameraSettings',
    'W3DDeviceSettings',
    'UnitAISettings',
    'DamageFXSettings',
    'NetworkSettings',
    'AutoParticleSystemSettings',
    'LightingSettings',
    'SkirmishSettings',
    'ModelSettings',
    'InvisibilityManagerSettings',
    'RedAlertTemplate',
    'ButtonSingleStateData',
    'JoypadCommandBarTemplate',
    'JoypadCommandBarButtonTemplate',
    'UIJoypadCommandBarCoopCommunicator',
    'UIJoypadCommandBarButtonBuild',
    'UIJoypadCommandBarControlGroups',
    'UIJoypadCommandBarHomogenousGroup',
    'UIJoypadCommandBarPlayerPowers',
    'UIJoypadCommandBarMixedGroup',
    'UIJoypadCommandBarSingleUnit',
    'UIJoypadCommandBarStances',
    'UIJoypadCommandBarTopMenu',
    'UICommandButton',
    'UIDecalCloud',
    'UIDecalDestinationMarker',
    'UIDecalGrid',
    'UIFloatingTextDisplay',
    'UIMessageDisplay',
    'UIMilitaryCaptionDisplay',
    'UIRadarObjectsLayer',
    'UISubtitleDisplay',
    'UITimerDisplay',
    'UICoopTinting',
    'DynamicsContactTagMapping',
    'MissionHotSpotSettings',
    'OrdersManagerSettings',
    'BuildSystemSettings',
    'ScorchMarkSettings',
    'ResourceSettings',
    'PlayerTechStoreTemplate',
    'PurchasePlayerTechButtonTemplate',
    'UIWorldBuilderDecalGrid',
    'ProjectilePath',
    'RadarTerrainImage',
    'AssetReportTable',
    'HealthBarTemplate',
    'HealthBarSettings',
    'RadiusCursor',
    'ForceFeedbackEvent',
    'UnitIntro'
]
assetList = {}
length = len(assetType)
for i in range(0, length - 1):
    assetList[i] = []
for path, subdirs, files in os.walk(XmlFiles):
    for name in files:
        if fnmatch(name, pattern):
            filename = os.path.join(path, name)
            f = open(file=filename, mode='rb')
            data = f.read()
            f.close()
            encode = chardet.detect(data)["encoding"]
            content2 = []
            with open(filename, 'r', encoding=encode) as ff:
                content = ff.read()
                comment = re.compile(r'<!--.*?-->', flags=re.DOTALL)
                content = comment.sub("", content)
                content = re.sub(r"encoding.*?\"\?", "encoding=\"utf-8\"?", content)
                with open(OutPutDir + "\\" + name, 'w', encoding=encode) as f1:
                    f1.write(content)
            try:
                DOMTree = xml.dom.minidom.parse(OutPutDir + "\\" + name)
            except:
                print(filename + " error and skip")
            else:
                collection = DOMTree.documentElement
                for i in range(0, length-1):
                    tempAssets = collection.getElementsByTagName(assetType[i])
                    for tempAsset in tempAssets:
                        if tempAsset.hasAttribute("id"):
                            info = [tempAsset.getAttribute("id"), filename]
                            assetList[i].append(info)
            finally:
                os.remove(OutPutDir + "\\" + name)
DuplicateS = {}
for i in range(0, length-1):
    DuplicateS[assetType[i]] = []
    df = False
    DuplicateS2 = []
    assetList[i].sort()
    newList = [item[0] for item in assetList[i]]
    length2 = len(newList)
    for j in range(0, length2-1):
        if newList.count(newList[j]) > 1:
            df = True
            aid = assetList[i][j][0]
            for asset in assetList[i]:
                if asset[0] == aid:
                    filename2 = asset[1]
                    info = [aid, filename2]
                    if info not in DuplicateS[assetType[i]]:
                        DuplicateS[assetType[i]].append(info)
    if not df:
        del DuplicateS[assetType[i]]
output = []
for a in DuplicateS:
    output.append("Type:" + a)
    for b in DuplicateS[a]:
        output.append("\t" + b[0] + "\t" + b[1])
with open(OutPutDir + "\\Duplicates" + time.strftime("%Y%H%M%S", time.localtime()) + ".txt", 'w') as f1:
    for a in output:
        f1.write(a)
        f1.write("\n")
