movie 'C:\projects\Ra3\PRODUC~1\Data\APTBUI~1\034A3~1.0-D\pc\Output\TacticalHUDRadar\\TacticalHUDRadar.eaf' &compressed // flash 7, total frames: 1, frame rate: 30 fps, 1024x768 px

  &defineMovieClip 2 // total frames: 1
  &end // of defineMovieClip 2
  
  &exportAssets
    2 &as 'LayerRenderingSurfaceContentPlaceholder'
  &end // of exportAssets

  &defineMovieClip 5 // total frames: 30

    &frame 0
      &pushs '_'
      &pushsgv 'imageLabel'
      &add
      &gotoAndPlay    &end // of frame 0

    &frame 4
      &stop
    &end // of frame 4

    &frame 9
      &stop
    &end // of frame 9

    &frame 14
      &stop
    &end // of frame 14

    &frame 19
      &stop
    &end // of frame 19

    &frame 29
      &stop
    &end // of frame 29
  &end // of defineMovieClip 5
  
  &exportAssets
    5 &as 'BuildQueueIndicator'
  &end // of exportAssets

  &defineMovieClip 8 // total frames: 1
  &end // of defineMovieClip 8

  &defineMovieClip 12 // total frames: 1
  &end // of defineMovieClip 12

  &defineMovieClip 15 // total frames: 1
  &end // of defineMovieClip 15

  &defineMovieClip 16 // total frames: 85

    &frame 0
      &pushglobalgv
      &pushsgm 'MinLOD'
      &not
      &jnz label1      
      &pushsgv 'effect1'
      &pushs '_visible'
      &pushzero
      &setMember
     label1:
    &end // of frame 0

    &frame 15
      &pushglobalgv
      &pushsgm 'MinLOD'
      &not
      &jnz label1      
      &pushsgv 'effect2'
      &pushs '_visible'
      &pushzero
      &setMember
     label1:
    &end // of frame 15

    &frame 69
      &constants 'this', 'done', '_loop', 'gotoAndPlay'  
      &pushthisgv
      &pushsdbgm 1							//'done'
      &pushundef
      &equals
      &dup
      &jnz label1      
      &pop
      &pushthisgv
      &pushsdbgm 1							//'done'
      &not
     label1:
      &not
      &jnz label2      
      &pushsdb 2							//'_loop'
      &pushone
      &pushthisgv
      &dcallmp 3							// gotoAndPlay()
     label2:
    &end // of frame 69

    &frame 84
      &constants '_parent', 'initialized', 'this', 'DestroyPing', 'removeMovieClip'  
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 1							//'initialized'
      &not
      &jnz label1      
      &pushthisgv
      &pushone
      &pushsdbgv 0							//'_parent'
      &dcallmp 3							// DestroyPing()
      &jmp label2      
     label1:
      &pushzero
      &pushthisgv
      &dcallmp 4							// removeMovieClip()
     label2:
    &end // of frame 84
  &end // of defineMovieClip 16
  
  &exportAssets
    16 &as 'PingGeneric'
  &end // of exportAssets

  &defineMovieClip 19 // total frames: 1
  &end // of defineMovieClip 19

  &defineMovieClip 21 // total frames: 1
  &end // of defineMovieClip 21

  &defineMovieClip 24 // total frames: 1
  &end // of defineMovieClip 24

  &defineMovieClip 25 // total frames: 20
  &end // of defineMovieClip 25

  &defineMovieClip 26 // total frames: 55

    &frame 54
      &constants '_parent', 'done', 'gotoAndPlay', 'initialized', 'DestroyPing', 'removeMovieClip'  
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 1							//'done'
      &pushundef
      &equals
      &dup
      &jnz label1      
      &pop
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 1							//'done'
      &not
     label1:
      &not
      &jnz label2      
      &pushone
      &pushone
      &pushsdbgv 0							//'_parent'
      &dcallmp 2							// gotoAndPlay()
      &jmp label4      
     label2:
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 0							//'_parent'
      &pushsdbgm 3							//'initialized'
      &not
      &jnz label3      
      &pushsdbgv 0							//'_parent'
      &pushone
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 0							//'_parent'
      &dcallmp 4							// DestroyPing()
      &jmp label4      
     label3:
      &pushzero
      &pushsdbgv 0							//'_parent'
      &dcallmp 5							// removeMovieClip()
     label4:
    &end // of frame 54
  &end // of defineMovieClip 26

  &defineMovieClip 27 // total frames: 1
  &end // of defineMovieClip 27
  
  &exportAssets
    27 &as 'PingBeacon'
  &end // of exportAssets

  &defineMovieClip 29 // total frames: 1
  &end // of defineMovieClip 29

  &defineMovieClip 31 // total frames: 1
  &end // of defineMovieClip 31

  &defineMovieClip 33 // total frames: 1
  &end // of defineMovieClip 33

  &defineMovieClip 34 // total frames: 60

    &frame 0
      &pushthisgv
      &pushs 'loopcount'
      &pushbyte 5
      &setMember
    &end // of frame 0

    &frame 44
      &constants 'this', 'loopcount', '_loop', 'gotoAndPlay'  
      &pushthisgv
      &pushsdb 1							//'loopcount'
      &pushthisgv
      &pushsdbgm 1							//'loopcount'
      &decrement
      &setRegister r:0
      &setMember
      &pushregister 0
      &pushzero
      &greaterThan
      &not
      &jnz label1      
      &pushsdb 2							//'_loop'
      &pushone
      &pushthisgv
      &dcallmp 3							// gotoAndPlay()
     label1:
    &end // of frame 44

    &frame 59
      &constants '_parent', 'initialized', 'DestroyPing', 'removeMovieClip'  
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 0							//'_parent'
      &pushsdbgm 1							//'initialized'
      &not
      &jnz label1      
      &pushsdbgv 0							//'_parent'
      &pushone
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 0							//'_parent'
      &dcallmp 2							// DestroyPing()
      &jmp label2      
     label1:
      &pushzero
      &pushsdbgv 0							//'_parent'
      &dcallmp 3							// removeMovieClip()
     label2:
    &end // of frame 59
  &end // of defineMovieClip 34

  &defineMovieClip 35 // total frames: 1

    &frame 0
      &constants 'pingColor', 'colorizer', 'mov', 'Color', 'setRGB'  
      &pushsdbgv 0							//'pingColor'
      &pushundef
      &equals
      &not
      &not
      &jnz label1      
      &pushsdb 1							//'colorizer'
      &pushsdbgv 2							//'mov'
      &pushone
      &pushsdb 3							//'Color'
      &new
      &varEquals
      &pushsdbgv 0							//'pingColor'
      &pushone
      &pushsdbgv 1							//'colorizer'
      &dcallmp 4							// setRGB()
     label1:
    &end // of frame 0
  &end // of defineMovieClip 35
  
  &exportAssets
    35 &as 'PingPlayer'
  &end // of exportAssets

  &defineMovieClip 37 // total frames: 1
  &end // of defineMovieClip 37

  &defineMovieClip 38 // total frames: 1
  &end // of defineMovieClip 38

  &defineMovieClip 39 // total frames: 60
  &end // of defineMovieClip 39

  &defineMovieClip 40 // total frames: 1

    &frame 0
      &constants 'beaconColor', 'colorizer', 'mov', 'circle', 'inner', 'Color', 'setRGB'  
      &pushsdbgv 0							//'beaconColor'
      &pushundef
      &equals
      &not
      &not
      &jnz label1      
      &pushsdb 1							//'colorizer'
      &pushsdbgv 2							//'mov'
      &pushsdbgm 3							//'circle'
      &pushsdbgm 4							//'inner'
      &pushone
      &pushsdb 5							//'Color'
      &new
      &varEquals
      &pushsdbgv 0							//'beaconColor'
      &pushone
      &pushsdbgv 1							//'colorizer'
      &dcallmp 6							// setRGB()
     label1:
    &end // of frame 0
  &end // of defineMovieClip 40
  
  &exportAssets
    40 &as 'MpBeaconIndicator'
  &end // of exportAssets

  &defineMovieClip 43 // total frames: 1
  &end // of defineMovieClip 43

  &defineMovieClip 46 // total frames: 1
  &end // of defineMovieClip 46

  &defineMovieClip 51 // total frames: 1
  &end // of defineMovieClip 51

  &defineMovieClip 52 // total frames: 20
  &end // of defineMovieClip 52

  &defineMovieClip 53 // total frames: 20
  &end // of defineMovieClip 53

  &defineMovieClip 54 // total frames: 20
  &end // of defineMovieClip 54

  &defineMovieClip 55 // total frames: 20
  &end // of defineMovieClip 55

  &defineMovieClip 56 // total frames: 37

    &frame 21
      &constants 'this', 'done', '_loop', 'gotoAndPlay'  
      &pushthisgv
      &pushsdbgm 1							//'done'
      &pushundef
      &equals
      &dup
      &jnz label1      
      &pop
      &pushthisgv
      &pushsdbgm 1							//'done'
      &not
     label1:
      &not
      &jnz label2      
      &pushsdb 2							//'_loop'
      &pushone
      &pushthisgv
      &dcallmp 3							// gotoAndPlay()
     label2:
    &end // of frame 21

    &frame 36
      &constants '_parent', 'initialized', 'this', 'DestroyPing', 'removeMovieClip'  
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 1							//'initialized'
      &not
      &jnz label1      
      &pushthisgv
      &pushone
      &pushsdbgv 0							//'_parent'
      &dcallmp 3							// DestroyPing()
      &jmp label2      
     label1:
      &pushzero
      &pushthisgv
      &dcallmp 4							// removeMovieClip()
     label2:
    &end // of frame 36
  &end // of defineMovieClip 56
  
  &exportAssets
    56 &as 'PingAttack'
  &end // of exportAssets

  &defineMovieClip 58 // total frames: 1
  &end // of defineMovieClip 58

  &defineMovieClip 60 // total frames: 1
  &end // of defineMovieClip 60

  &defineMovieClip 62 // total frames: 1
  &end // of defineMovieClip 62

  &defineMovieClip 63 // total frames: 1
  &end // of defineMovieClip 63

  &defineMovieClip 64 // total frames: 20
  &end // of defineMovieClip 64

  &defineMovieClip 65 // total frames: 39
  &end // of defineMovieClip 65

  &defineMovieClip 66 // total frames: 20
  &end // of defineMovieClip 66

  &defineMovieClip 67 // total frames: 37

    &frame 21
      &constants 'this', 'done', '_loop', 'gotoAndPlay'  
      &pushthisgv
      &pushsdbgm 1							//'done'
      &pushundef
      &equals
      &dup
      &jnz label1      
      &pop
      &pushthisgv
      &pushsdbgm 1							//'done'
      &not
     label1:
      &not
      &jnz label2      
      &pushsdb 2							//'_loop'
      &pushone
      &pushthisgv
      &dcallmp 3							// gotoAndPlay()
     label2:
    &end // of frame 21

    &frame 36
      &constants '_parent', 'initialized', 'this', 'DestroyPing', 'removeMovieClip'  
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 1							//'initialized'
      &not
      &jnz label1      
      &pushthisgv
      &pushone
      &pushsdbgv 0							//'_parent'
      &dcallmp 3							// DestroyPing()
      &jmp label2      
     label1:
      &pushzero
      &pushthisgv
      &dcallmp 4							// removeMovieClip()
     label2:
    &end // of frame 36
  &end // of defineMovieClip 67
  
  &exportAssets
    67 &as 'PingInformation'
  &end // of exportAssets

  &defineMovieClip 69 // total frames: 1
  &end // of defineMovieClip 69

  &defineMovieClip 70 // total frames: 1
  &end // of defineMovieClip 70

  &defineMovieClip 71 // total frames: 15
  &end // of defineMovieClip 71

  &defineMovieClip 72 // total frames: 37

    &frame 21
      &constants 'this', 'done', '_loop', 'gotoAndPlay'  
      &pushthisgv
      &pushsdbgm 1							//'done'
      &pushundef
      &equals
      &dup
      &jnz label1      
      &pop
      &pushthisgv
      &pushsdbgm 1							//'done'
      &not
     label1:
      &not
      &jnz label2      
      &pushsdb 2							//'_loop'
      &pushone
      &pushthisgv
      &dcallmp 3							// gotoAndPlay()
     label2:
    &end // of frame 21

    &frame 36
      &constants '_parent', 'initialized', 'this', 'DestroyPing', 'removeMovieClip'  
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 1							//'initialized'
      &not
      &jnz label1      
      &pushthisgv
      &pushone
      &pushsdbgv 0							//'_parent'
      &dcallmp 3							// DestroyPing()
      &jmp label2      
     label1:
      &pushzero
      &pushthisgv
      &dcallmp 4							// removeMovieClip()
     label2:
    &end // of frame 36
  &end // of defineMovieClip 72
  
  &exportAssets
    72 &as 'PingUpgrade'
  &end // of exportAssets

  &frame 0
    &constants '_opening', 'coverMC', 'gotoAndPlay', 'panel', '_visible', 'inputShield', 'isCoverClosed', 'isMapAspectRatioChanging', '_closing', 'viewBoxSurface', 'Pointer', 'encode', 'pingSurface', 'telestratorSurface', 'objectiveStage', 'movieSurface', 'buildQueueStage', 'beaconStage', 'objectsSurface', 'terrainSurface', 'coOpAITargetLayer', 'shroudSurface', 'hotSpotLayer', 'bridgeLayerMC', 'mapWidth', 'mapHeight', '_x', 'mapX', '_y', 'mapY', '_width', '_height', 'initialized', 'Resize', 'sizer', 'mapAspectRatio', 'backAspectRatio', 'backWidth', 'backX', 'backY', 'backHeight', 'MoveToMapArea', 'taintSurface', 'inputCatcher', 'MoveToMapAreaWithoutScaling', '##################******************* pingSurface is ', ', pingSurface._x is ', ', pingSurface._y is ', 'bridgeLayer', 'jammedMessage', 'highlightClip', 'back', 'CreateHUDGadgetFlash', 'Close', 'FSCommand:', 'OnOpened', 'qualifyName', '', 'OnClosed', 'Open', 'GetViewBoxSurface', 'GetPingStage', 'GetTelestratorSurface', 'GetObjectiveStage', 'GetMovieSurface', 'GetBuildQueueStage', 'GetBeaconStage', 'GetObjectsSurface', 'GetTerrainSurface', 'GetCoOpAITargetLayer', 'GetShroudSurface', 'GetHotSpotLayer', 'GetBridgeLayer', 'GetMapWidth', 'GetMapHeight', 'SetMapAspectRatio', 'SetJammedMessageVisibility', 'SetHighlighted', 'OnObjectiveStageLoaded', 'OnCoOpAITargetLayerLoaded', 'OnHotSpotLayerLoaded', 'OnBridgeLayerLoaded', 'OnCoverClipOpened', 'OnCoverClipClosed', 'onOpened', 'onClosed', 'onUnload', 'this', '_global', 'bind0', 'OnInitialized', 'extern', 'InGame'  
    &function Open (    )    
      &pushsdb 0							//'_opening'
      &pushone
      &pushsdbgv 1							//'coverMC'
      &dcallmp 2							// gotoAndPlay()
      &pushsdbgv 3							//'panel'
      &pushsdb 4							//'_visible'
      &pushtrue
      &setMember
    &end // of function Open

    &function Close (    )    
      &pushsdbgv 5							//'inputShield'
      &pushsdb 4							//'_visible'
      &pushtrue
      &setMember
      &pushsdb 6							//'isCoverClosed'
      &pushtrue
      &setVariable
      &pushsdb 7							//'isMapAspectRatioChanging'
      &pushfalse
      &setVariable
      &pushsdb 8							//'_closing'
      &pushone
      &pushsdbgv 1							//'coverMC'
      &dcallmp 2							// gotoAndPlay()
    &end // of function Close

    &function GetViewBoxSurface (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 9							//'viewBoxSurface'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetViewBoxSurface

    &function GetPingStage (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 12							//'pingSurface'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetPingStage

    &function GetTelestratorSurface (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 13							//'telestratorSurface'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetTelestratorSurface

    &function GetObjectiveStage (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 14							//'objectiveStage'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetObjectiveStage

    &function GetMovieSurface (    )    
      &pushsdbgv 15							//'movieSurface'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetMovieSurface

    &function GetBuildQueueStage (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 16							//'buildQueueStage'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetBuildQueueStage

    &function GetBeaconStage (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 17							//'beaconStage'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetBeaconStage

    &function GetObjectsSurface (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 18							//'objectsSurface'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetObjectsSurface

    &function GetTerrainSurface (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 19							//'terrainSurface'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetTerrainSurface

    &function GetCoOpAITargetLayer (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 20							//'coOpAITargetLayer'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetCoOpAITargetLayer

    &function GetShroudSurface (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 21							//'shroudSurface'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetShroudSurface

    &function GetHotSpotLayer (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 22							//'hotSpotLayer'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetHotSpotLayer

    &function GetBridgeLayer (    )    
      &pushsdbgv 3							//'panel'
      &pushsdbgm 23							//'bridgeLayerMC'
      &pushone
      &pushsdbgv 10							//'Pointer'
      &pushsdb 11							//'encode'
      &callMethod
      &return
    &end // of function GetBridgeLayer

    &function GetMapWidth (    )    
      &pushsdbgv 24							//'mapWidth'
      &toString
      &return
    &end // of function GetMapWidth

    &function GetMapHeight (    )    
      &pushsdbgv 25							//'mapHeight'
      &toString
      &return
    &end // of function GetMapHeight

    &function2 MoveToMapArea (r:1='clip') ()
      &pushregister 1
      &pushsdb 26							//'_x'
      &pushsdbgv 27							//'mapX'
      &setMember
      &pushregister 1
      &pushsdb 28							//'_y'
      &pushsdbgv 29							//'mapY'
      &setMember
      &pushregister 1
      &pushsdb 30							//'_width'
      &pushsdbgv 24							//'mapWidth'
      &setMember
      &pushregister 1
      &pushsdb 31							//'_height'
      &pushsdbgv 25							//'mapHeight'
      &setMember
    &end // of function MoveToMapArea

    &function2 MoveToMapAreaWithoutScaling (r:1='clip') ()
      &pushregister 1
      &pushsdb 26							//'_x'
      &pushsdbgv 27							//'mapX'
      &setMember
      &pushregister 1
      &pushsdb 28							//'_y'
      &pushsdbgv 29							//'mapY'
      &setMember
      &pushregister 1
      &pushsdbgm 32							//'initialized'
      &not
      &jnz label1      
      &pushsdbgv 25							//'mapHeight'
      &pushsdbgv 24							//'mapWidth'
      &pushbyte 2
      &pushregister 1
      &dcallmp 33							// Resize()
      &jmp label2      
     label1:
      &pushregister 1
      &pushsdbgm 34							//'sizer'
      &pushsdb 30							//'_width'
      &pushsdbgv 24							//'mapWidth'
      &setMember
      &pushregister 1
      &pushsdbgm 34							//'sizer'
      &pushsdb 31							//'_height'
      &pushsdbgv 25							//'mapHeight'
      &setMember
     label2:
      &pushregister 1
      &pushsdb 30							//'_width'
      &pushsdbgv 24							//'mapWidth'
      &setMember
      &pushregister 1
      &pushsdb 31							//'_height'
      &pushsdbgv 25							//'mapHeight'
      &setMember
    &end // of function MoveToMapAreaWithoutScaling

    &function2 SetMapAspectRatio (r:1='newRatio') ()
      &pushregister 1
      &pushsdbgv 35							//'mapAspectRatio'
      &equals
      &not
      &jnz label3      
      &pushundef
      &return
     label3:
      &pushregister 1
      &pushsdbgv 36							//'backAspectRatio'
      &greaterThan
      &not
      &jnz label4      
      &pushsdb 24							//'mapWidth'
      &pushsdbgv 37							//'backWidth'
      &setVariable
      &pushsdb 25							//'mapHeight'
      &pushsdbgv 24							//'mapWidth'
      &pushregister 1
      &divide
      &setVariable
      &pushsdb 27							//'mapX'
      &pushsdbgv 38							//'backX'
      &setVariable
      &pushsdb 29							//'mapY'
      &pushsdbgv 39							//'backY'
      &pushsdbgv 40							//'backHeight'
      &pushsdbgv 25							//'mapHeight'
      &subtract
      &pushbyte 2
      &divide
      &add
      &setVariable
      &jmp label5      
     label4:
      &pushsdb 25							//'mapHeight'
      &pushsdbgv 40							//'backHeight'
      &setVariable
      &pushsdb 24							//'mapWidth'
      &pushsdbgv 25							//'mapHeight'
      &pushregister 1
      &multiply
      &setVariable
      &pushsdb 29							//'mapY'
      &pushsdbgv 39							//'backY'
      &setVariable
      &pushsdb 27							//'mapX'
      &pushsdbgv 38							//'backX'
      &pushsdbgv 37							//'backWidth'
      &pushsdbgv 24							//'mapWidth'
      &subtract
      &pushbyte 2
      &divide
      &add
      &setVariable
     label5:
      &pushsdb 35							//'mapAspectRatio'
      &pushregister 1
      &setVariable
      &pushsdbgv 3							//'panel'
      &pushsdbgm 9							//'viewBoxSurface'
      &pushone
      &dcallfp 41							// MoveToMapArea()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 21							//'shroudSurface'
      &pushone
      &dcallfp 41							// MoveToMapArea()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 18							//'objectsSurface'
      &pushone
      &dcallfp 41							// MoveToMapArea()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 42							//'taintSurface'
      &pushone
      &dcallfp 41							// MoveToMapArea()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 19							//'terrainSurface'
      &pushone
      &dcallfp 41							// MoveToMapArea()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 13							//'telestratorSurface'
      &pushone
      &dcallfp 41							// MoveToMapArea()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 43							//'inputCatcher'
      &pushone
      &dcallfp 41							// MoveToMapArea()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 12							//'pingSurface'
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
      &pushsdb 45							//'##################******************* pingSurface is '
      &pushsdbgv 3							//'panel'
      &pushsdbgm 12							//'pingSurface'
      &add
      &pushsdb 46							//', pingSurface._x is '
      &add
      &pushsdbgv 3							//'panel'
      &pushsdbgm 12							//'pingSurface'
      &pushsdbgm 26							//'_x'
      &add
      &pushsdb 47							//', pingSurface._y is '
      &add
      &pushsdbgv 3							//'panel'
      &pushsdbgm 12							//'pingSurface'
      &pushsdbgm 28							//'_y'
      &add
      &trace
      &pushsdbgv 3							//'panel'
      &pushsdbgm 14							//'objectiveStage'
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 17							//'beaconStage'
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 16							//'buildQueueStage'
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 20							//'coOpAITargetLayer'
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 22							//'hotSpotLayer'
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
      &pushsdbgv 3							//'panel'
      &pushsdbgm 48							//'bridgeLayer'
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
      &pushsdbgv 6							//'isCoverClosed'
      &not
      &not
      &jnz label6      
      &pushsdb 7							//'isMapAspectRatioChanging'
      &pushtrue
      &setVariable
      &pushsdbgv 5							//'inputShield'
      &pushsdb 4							//'_visible'
      &pushtrue
      &setMember
      &pushsdb 8							//'_closing'
      &pushone
      &pushsdbgv 1							//'coverMC'
      &dcallmp 2							// gotoAndPlay()
     label6:
    &end // of function SetMapAspectRatio

    &function2 SetJammedMessageVisibility (r:1='vis') ()
      &pushsdbgv 49							//'jammedMessage'
      &pushsdb 4							//'_visible'
      &pushregister 1
      &pushzero
      &equals
      &not
      &setMember
    &end // of function SetJammedMessageVisibility

    &function2 SetHighlighted (r:3='highlightArg') (r:1='_global')
      &pushregister 3
      &pushzero
      &equals
      &not
      &setRegister r:2
      &pop
      &pushregister 2
      &not
      &jnz label8      
      &pushsdbgv 50							//'highlightClip'
      &pushundef
      &equals
      &not
      &jnz label7      
      &pushsdb 50							//'highlightClip'
      &pushsdbgv 3							//'panel'
      &pushsdbgm 51							//'back'
      &pushone
      &pushregister 1
      &dcallmsv 52							// CreateHUDGadgetFlash()
     label7:
      &jmp label9      
     label8:
      &pushzero
      &pushsdbgv 50							//'highlightClip'
      &dcallmp 53							// Close()
      &pushsdb 50							//'highlightClip'
      &pushundef
      &setVariable
     label9:
    &end // of function SetHighlighted

    &function2 OnObjectiveStageLoaded (r:1='objectiveStage') ()
      &pushregister 1
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
    &end // of function OnObjectiveStageLoaded

    &function2 OnCoOpAITargetLayerLoaded (r:1='coOpAITargetLayer') ()
      &pushregister 1
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
    &end // of function OnCoOpAITargetLayerLoaded

    &function2 OnHotSpotLayerLoaded (r:1='hotSpotLayer') ()
      &pushregister 1
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
    &end // of function OnHotSpotLayerLoaded

    &function2 OnBridgeLayerLoaded (r:1='bridgeLayer') ()
      &pushregister 1
      &pushone
      &dcallfp 44							// MoveToMapAreaWithoutScaling()
    &end // of function OnBridgeLayerLoaded

    &function2 OnCoverClipOpened () (r:1='this')
      &pushsdbgv 5							//'inputShield'
      &pushsdb 4							//'_visible'
      &pushfalse
      &setMember
      &pushsdbgv 7							//'isMapAspectRatioChanging'
      &not
      &jnz label10      
      &pushsdb 7							//'isMapAspectRatioChanging'
      &pushfalse
      &setVariable
      &jmp label11      
     label10:
      &pushsdb 54							//'FSCommand:'
      &pushsdb 55							//'OnOpened'
      &pushregister 1
      &pushbyte 2
      &pushsdb 56							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 57							//''
      &getURL2
      &pushsdb 6							//'isCoverClosed'
      &pushfalse
      &setVariable
     label11:
    &end // of function OnCoverClipOpened

    &function2 OnCoverClipClosed () (r:1='this')
      &pushsdbgv 7							//'isMapAspectRatioChanging'
      &not
      &jnz label12      
      &pushsdb 0							//'_opening'
      &pushone
      &pushsdbgv 1							//'coverMC'
      &dcallmp 2							// gotoAndPlay()
      &jmp label13      
     label12:
      &pushsdb 54							//'FSCommand:'
      &pushsdb 58							//'OnClosed'
      &pushregister 1
      &pushbyte 2
      &pushsdb 56							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 57							//''
      &getURL2
      &pushsdbgv 3							//'panel'
      &pushsdb 4							//'_visible'
      &pushfalse
      &setMember
     label13:
    &end // of function OnCoverClipClosed

    &function onUnload (    )    
      &pushzero
      &pushsdbgv 50							//'highlightClip'
      &dcallmp 53							// Close()
      &pushsdb 59							//'Open'
      &delete2
      &pop
      &pushsdb 53							//'Close'
      &delete2
      &pop
      &pushsdb 60							//'GetViewBoxSurface'
      &delete2
      &pop
      &pushsdb 61							//'GetPingStage'
      &delete2
      &pop
      &pushsdb 62							//'GetTelestratorSurface'
      &delete2
      &pop
      &pushsdb 63							//'GetObjectiveStage'
      &delete2
      &pop
      &pushsdb 64							//'GetMovieSurface'
      &delete2
      &pop
      &pushsdb 65							//'GetBuildQueueStage'
      &delete2
      &pop
      &pushsdb 66							//'GetBeaconStage'
      &delete2
      &pop
      &pushsdb 67							//'GetObjectsSurface'
      &delete2
      &pop
      &pushsdb 68							//'GetTerrainSurface'
      &delete2
      &pop
      &pushsdb 69							//'GetCoOpAITargetLayer'
      &delete2
      &pop
      &pushsdb 70							//'GetShroudSurface'
      &delete2
      &pop
      &pushsdb 71							//'GetHotSpotLayer'
      &delete2
      &pop
      &pushsdb 72							//'GetBridgeLayer'
      &delete2
      &pop
      &pushsdb 73							//'GetMapWidth'
      &delete2
      &pop
      &pushsdb 74							//'GetMapHeight'
      &delete2
      &pop
      &pushsdb 41							//'MoveToMapArea'
      &delete2
      &pop
      &pushsdb 44							//'MoveToMapAreaWithoutScaling'
      &delete2
      &pop
      &pushsdb 75							//'SetMapAspectRatio'
      &delete2
      &pop
      &pushsdb 76							//'SetJammedMessageVisibility'
      &delete2
      &pop
      &pushsdb 77							//'SetHighlighted'
      &delete2
      &pop
      &pushsdb 78							//'OnObjectiveStageLoaded'
      &delete2
      &pop
      &pushsdb 79							//'OnCoOpAITargetLayerLoaded'
      &delete2
      &pop
      &pushsdb 80							//'OnHotSpotLayerLoaded'
      &delete2
      &pop
      &pushsdb 81							//'OnBridgeLayerLoaded'
      &delete2
      &pop
      &pushsdb 82							//'OnCoverClipOpened'
      &delete2
      &pop
      &pushsdb 83							//'OnCoverClipClosed'
      &delete2
      &pop
      &pushsdbgv 1							//'coverMC'
      &pushsdb 84							//'onOpened'
      &delete
      &pop
      &pushsdbgv 1							//'coverMC'
      &pushsdb 85							//'onClosed'
      &delete
      &pop
      &pushsdb 86							//'onUnload'
      &delete2
      &pop
    &end // of function onUnload

    &pushsdbgv 32							//'initialized'
    &not
    &not
    &jnz label14    
    &pushsdb 38							//'backX'
    &pushsdbgv 3							//'panel'
    &pushsdbgm 51							//'back'
    &pushsdbgm 26							//'_x'
    &setVariable
    &pushsdb 39							//'backY'
    &pushsdbgv 3							//'panel'
    &pushsdbgm 51							//'back'
    &pushsdbgm 28							//'_y'
    &setVariable
    &pushsdb 37							//'backWidth'
    &pushsdbgv 3							//'panel'
    &pushsdbgm 51							//'back'
    &pushsdbgm 30							//'_width'
    &setVariable
    &pushsdb 40							//'backHeight'
    &pushsdbgv 3							//'panel'
    &pushsdbgm 51							//'back'
    &pushsdbgm 31							//'_height'
    &setVariable
    &pushsdb 36							//'backAspectRatio'
    &pushsdbgv 37							//'backWidth'
    &pushsdbgv 40							//'backHeight'
    &divide
    &setVariable
    &pushsdb 27							//'mapX'
    &pushsdbgv 38							//'backX'
    &setVariable
    &pushsdb 29							//'mapY'
    &pushsdbgv 39							//'backY'
    &setVariable
    &pushsdb 24							//'mapWidth'
    &pushsdbgv 37							//'backWidth'
    &setVariable
    &pushsdb 25							//'mapHeight'
    &pushsdbgv 40							//'backHeight'
    &setVariable
    &pushsdb 35							//'mapAspectRatio'
    &pushsdbgv 36							//'backAspectRatio'
    &setVariable
    &pushsdb 6							//'isCoverClosed'
    &pushtrue
    &setVariable
    &pushsdb 7							//'isMapAspectRatioChanging'
    &pushfalse
    &setVariable
    &pushsdbgv 49							//'jammedMessage'
    &pushsdb 4							//'_visible'
    &pushfalse
    &setMember
    &pushsdbgv 3							//'panel'
    &pushsdb 4							//'_visible'
    &pushfalse
    &setMember
    &pushsdbgv 1							//'coverMC'
    &pushsdb 84							//'onOpened'
    &pushsdbgv 82							//'OnCoverClipOpened'
    &pushthisgv
    &pushbyte 2
    &pushglobalgv
    &pushsdb 89							//'bind0'
    &callMethod
    &setMember
    &pushsdbgv 1							//'coverMC'
    &pushsdb 85							//'onClosed'
    &pushsdbgv 83							//'OnCoverClipClosed'
    &pushthisgv
    &pushbyte 2
    &pushglobalgv
    &pushsdb 89							//'bind0'
    &callMethod
    &setMember
    &pushsdb 32							//'initialized'
    &pushtrue
    &setVariable
    &pushsdb 54							//'FSCommand:'
    &pushsdb 90							//'OnInitialized'
    &pushthisgv
    &pushbyte 2
    &pushsdb 56							//'qualifyName'
    &callFunction
    &concat
    &pushsdb 57							//''
    &getURL2
    &pushsdbgv 91							//'extern'
    &pushsdbgm 92							//'InGame'
    &not
    &not
    &jnz label14    
    &pushfloat 0.500000000000000
    &pushone
    &dcallfp 75							// SetMapAspectRatio()
    &pushzero
    &dcallfp 53							// Close()
   label14:
  &end // of frame 0
  
  &importAssets &from '../../common/hud/ig_libHUD.swf'
    'WhiteRectangle' &as 73
  &end // of importAssets

  &defineButton 75
  
    &on     &idleToOverUp    ,&outDownToOverDown    ,&idleToOverDown
      &constants 'FSCommand:', 'OnEnter', '_parent', 'qualifyName', 'GetMousePosString', 'isMouseOver'  
      &pushsdb 0							//'FSCommand:'
      &pushsdb 1							//'OnEnter'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushbyte 2
      &pushsdb 3							//'qualifyName'
      &callFunction
      &concat
      &pushzero
      &pushsdb 4							//'GetMousePosString'
      &callFunction
      &getURL2
      &pushsdb 5							//'isMouseOver'
      &pushtrue
      &setVariable
    &end
  
    &on     &overUpToIdle    ,&overDownToOutDown    ,&overDownToIdle
      &constants 'isMouseOver', 'FSCommand:', 'OnLeave', '_parent', 'qualifyName', ''  
      &pushsdb 0							//'isMouseOver'
      &pushfalse
      &setVariable
      &pushsdb 1							//'FSCommand:'
      &pushsdb 2							//'OnLeave'
      &pushsdbgv 3							//'_parent'
      &pushsdbgm 3							//'_parent'
      &pushbyte 2
      &pushsdb 4							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 5							//''
      &getURL2
    &end
  &end // of defineButton 75
  
  &importAssets &from '../../common/hud/ig_libHUD.swf'
    'BlackRectangle' &as 76
  &end // of importAssets

  &defineMovieClip 77 // total frames: 1

    &frame 0
      &constants 'ancestor', '_parent', '_xscale', '_x', '_yscale', '_y', 'x', '_xmouse', 'y', '_ymouse', 'GetMousePos', 'mapX', 'mapWidth', 'mapY', 'mapHeight', 'x=', '&y=', 'isMouseOver', 'isDragging', 'lastXMouse', 'lastYMouse', 'FSCommand:', 'OnMove', 'qualifyName', 'GetMousePosString', 'OnPress', 'OnRelease', 'onMouseMove', 'onMouseDown', 'onMouseUp', 'onUnload'  
      &function2 GetMousePos () (r:1='_root', r:2='_parent')
        &pushregister 1
        &setRegister r:7
        &pop
        &pushzero
        &setRegister r:6
        &pop
        &pushzero
        &setRegister r:5
        &pop
        &pushone
        &setRegister r:9
        &pop
        &pushone
        &setRegister r:8
        &pop
        &pushsdb 0							//'ancestor'
        &pushregister 2
        &pushsdbgm 1							//'_parent'
        &setVariable
       label1:
        &pushsdbgv 0							//'ancestor'
        &pushregister 7
        &equals
        &not
        &not
        &jnz label2        
        &pushsdbgv 0							//'ancestor'
        &pushsdbgm 2							//'_xscale'
        &pushfloat 0.009999999776483
        &multiply
        &setRegister r:3
        &pop
        &pushregister 6
        &pushregister 3
        &multiply
        &setRegister r:6
        &pop
        &pushregister 6
        &pushsdbgv 0							//'ancestor'
        &pushsdbgm 3							//'_x'
        &subtract
        &setRegister r:6
        &pop
        &pushregister 9
        &pushregister 3
        &divide
        &setRegister r:9
        &pop
        &pushsdbgv 0							//'ancestor'
        &pushsdbgm 4							//'_yscale'
        &pushfloat 0.009999999776483
        &multiply
        &setRegister r:4
        &pop
        &pushregister 5
        &pushregister 4
        &multiply
        &setRegister r:5
        &pop
        &pushregister 5
        &pushsdbgv 0							//'ancestor'
        &pushsdbgm 5							//'_y'
        &subtract
        &setRegister r:5
        &pop
        &pushregister 8
        &pushregister 4
        &divide
        &setRegister r:8
        &pop
        &pushsdb 0							//'ancestor'
        &pushsdbgv 0							//'ancestor'
        &pushsdbgm 1							//'_parent'
        &setVariable
        &jmp label1        
       label2:
        &pushsdb 6							//'x'
        &pushregister 7
        &pushsdbgm 7							//'_xmouse'
        &pushregister 6
        &add
        &pushregister 9
        &multiply
        &pushsdb 8							//'y'
        &pushregister 7
        &pushsdbgm 9							//'_ymouse'
        &pushregister 5
        &add
        &pushregister 8
        &multiply
        &pushbyte 2
        &initObject
        &return
      &end // of function GetMousePos

      &function2 GetMousePosString () (r:1='_parent')
        &pushzero
        &pushsdb 10							//'GetMousePos'
        &callFunction
        &setRegister r:2
        &pop
        &pushregister 2
        &pushsdbgm 6							//'x'
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushsdbgm 11							//'mapX'
        &subtract
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushsdbgm 12							//'mapWidth'
        &divide
        &setRegister r:4
        &pop
        &pushregister 2
        &pushsdbgm 8							//'y'
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushsdbgm 13							//'mapY'
        &subtract
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushsdbgm 14							//'mapHeight'
        &divide
        &setRegister r:3
        &pop
        &pushsdb 15							//'x='
        &pushregister 4
        &toString
        &add
        &pushsdb 16							//'&y='
        &add
        &pushregister 3
        &toString
        &add
        &return
      &end // of function GetMousePosString

      &function2 onMouseMove () (r:1='_parent')
        &pushsdbgv 17							//'isMouseOver'
        &dup
        &jnz label3        
        &pop
        &pushsdbgv 18							//'isDragging'
       label3:
        &not
        &jnz label5        
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushsdbgm 7							//'_xmouse'
        &setRegister r:3
        &pop
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushsdbgm 9							//'_ymouse'
        &setRegister r:2
        &pop
        &pushregister 3
        &pushsdbgv 19							//'lastXMouse'
        &equals
        &not
        &dup
        &jnz label4        
        &pop
        &pushregister 2
        &pushsdbgv 20							//'lastYMouse'
        &equals
        &not
       label4:
        &not
        &jnz label5        
        &pushsdb 19							//'lastXMouse'
        &pushregister 3
        &setVariable
        &pushsdb 20							//'lastYMouse'
        &pushregister 2
        &setVariable
        &pushsdb 21							//'FSCommand:'
        &pushsdb 22							//'OnMove'
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushbyte 2
        &pushsdb 23							//'qualifyName'
        &callFunction
        &concat
        &pushzero
        &pushsdb 24							//'GetMousePosString'
        &callFunction
        &getURL2
       label5:
      &end // of function onMouseMove

      &function2 onMouseDown () (r:1='_parent')
        &pushsdbgv 17							//'isMouseOver'
        &not
        &jnz label6        
        &pushsdb 21							//'FSCommand:'
        &pushsdb 25							//'OnPress'
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushbyte 2
        &pushsdb 23							//'qualifyName'
        &callFunction
        &concat
        &pushzero
        &pushsdb 24							//'GetMousePosString'
        &callFunction
        &getURL2
        &pushsdb 18							//'isDragging'
        &pushtrue
        &setVariable
       label6:
      &end // of function onMouseDown

      &function2 onMouseUp () (r:1='_parent')
        &pushsdbgv 18							//'isDragging'
        &not
        &jnz label7        
        &pushsdb 21							//'FSCommand:'
        &pushsdb 26							//'OnRelease'
        &pushregister 1
        &pushsdbgm 1							//'_parent'
        &pushbyte 2
        &pushsdb 23							//'qualifyName'
        &callFunction
        &concat
        &pushzero
        &pushsdb 24							//'GetMousePosString'
        &callFunction
        &getURL2
        &pushsdb 18							//'isDragging'
        &pushfalse
        &setVariable
       label7:
      &end // of function onMouseUp

      &function onUnload (      )      
        &pushsdb 10							//'GetMousePos'
        &delete2
        &pop
        &pushsdb 24							//'GetMousePosString'
        &delete2
        &pop
        &pushsdb 27							//'onMouseMove'
        &delete2
        &pop
        &pushsdb 28							//'onMouseDown'
        &delete2
        &pop
        &pushsdb 29							//'onMouseUp'
        &delete2
        &pop
        &pushsdb 30							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

    &end // of frame 0

    &placeMovieClip 76 
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 76
  &end // of defineMovieClip 77

  &defineMovieClip 78 // total frames: 1
  &end // of defineMovieClip 78
  
  &importAssets &from '../../common/hud/ig_libHUD.swf'
    'SimpleRenderingSurface' &as 79
  &end // of importAssets

  &defineMovieClip 80 // total frames: 1
  &end // of defineMovieClip 80

  &defineMovieClip 81 // total frames: 1

    &frame 0
      &constants 'sizer', '_width', '_height', 'indicators', 'length', 'relX', 'relY', '_x', '_y', 'DestroyIndicator', 'BuildQueueIndicator', 'attachMovie', 'imageLabel', 'push', 'splice', 'removeMovieClip', 'Resize', 'AddIndicator', 'RemoveIndicator', 'MoveIndicator', 'onUnload', 'initialized', 'Array', 'FSCommand:', 'OnInitialized', 'this', 'qualifyName', '', 'extern', 'InGame', 'Def', 'Air'  
      &function2 Resize (r:4='newWidth', r:3='newHeight') ()
        &pushsdbgv 0							//'sizer'
        &pushsdb 1							//'_width'
        &pushregister 4
        &setMember
        &pushsdbgv 0							//'sizer'
        &pushsdb 2							//'_height'
        &pushregister 3
        &setMember
        &pushzero
        &setRegister r:2
        &pop
       label1:
        &pushregister 2
        &pushsdbgv 3							//'indicators'
        &pushsdbgm 4							//'length'
        &lessThan
        &not
        &jnz label5        
        &pushsdbgv 3							//'indicators'
        &pushregister 2
        &getMember
        &setRegister r:1
        &pop
        &pushregister 1
        &pushundef
        &equals
        &not
        &dup
        &not
        &jnz label2        
        &pop
        &pushregister 1
        &pushsdbgm 5							//'relX'
        &pushundef
        &equals
        &not
       label2:
        &dup
        &not
        &jnz label3        
        &pop
        &pushregister 1
        &pushsdbgm 6							//'relY'
        &pushundef
        &equals
        &not
       label3:
        &not
        &jnz label4        
        &pushregister 1
        &pushsdb 7							//'_x'
        &pushregister 1
        &pushsdbgm 5							//'relX'
        &pushregister 4
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 8							//'_y'
        &pushregister 1
        &pushsdbgm 6							//'relY'
        &pushregister 3
        &multiply
        &setMember
       label4:
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label1        
       label5:
      &end // of function Resize

      &function2 AddIndicator (r:6='idArg', r:5='imageLabelArg') (r:1='this')
        &pushregister 6
        &toNumber
        &setRegister r:3
        &pop
        &pushregister 5
        &toString
        &setRegister r:4
        &pop
        &pushregister 1
        &pushregister 3
        &toString
        &getMember
        &setRegister r:2
        &pop
        &pushregister 2
        &pushundef
        &equals
        &not
        &not
        &jnz label6        
        &pushregister 2
        &pushone
        &dcallfp 9							// DestroyIndicator()
       label6:
        &pushregister 3
        &pushregister 3
        &toString
        &pushsdb 10							//'BuildQueueIndicator'
        &pushbyte 3
        &pushsdb 11							//'attachMovie'
        &callFunction
        &setRegister r:2
        &pop
        &pushregister 2
        &pushsdb 12							//'imageLabel'
        &pushregister 4
        &setMember
        &pushregister 2
        &pushsdb 5							//'relX'
        &pushzero
        &setMember
        &pushregister 2
        &pushsdb 6							//'relY'
        &pushzero
        &setMember
        &pushregister 2
        &pushone
        &pushsdbgv 3							//'indicators'
        &dcallmp 13							// push()
      &end // of function AddIndicator

      &function2 RemoveIndicator (r:4='idArg') (r:1='this')
        &pushregister 4
        &toNumber
        &setRegister r:3
        &pop
        &pushregister 1
        &pushregister 3
        &toString
        &getMember
        &setRegister r:2
        &pop
        &pushregister 2
        &pushone
        &dcallfp 9							// DestroyIndicator()
      &end // of function RemoveIndicator

      &function2 MoveIndicator (r:7='idArg', r:8='relXArg', r:6='relYArg') (r:1='this')
        &pushregister 7
        &toNumber
        &setRegister r:5
        &pop
        &pushregister 8
        &toNumber
        &setRegister r:4
        &pop
        &pushregister 6
        &toNumber
        &setRegister r:3
        &pop
        &pushregister 1
        &pushregister 5
        &toString
        &getMember
        &setRegister r:2
        &pop
        &pushregister 2
        &pushsdb 5							//'relX'
        &pushregister 4
        &setMember
        &pushregister 2
        &pushsdb 6							//'relY'
        &pushregister 3
        &setMember
        &pushregister 2
        &pushsdb 7							//'_x'
        &pushregister 4
        &pushsdbgv 0							//'sizer'
        &pushsdbgm 1							//'_width'
        &multiply
        &setMember
        &pushregister 2
        &pushsdb 8							//'_y'
        &pushregister 3
        &pushsdbgv 0							//'sizer'
        &pushsdbgm 2							//'_height'
        &multiply
        &setMember
      &end // of function MoveIndicator

      &function2 DestroyIndicator (r:2='indicator') ()
        &pushzero
        &setRegister r:1
        &pop
       label7:
        &pushregister 1
        &pushsdbgv 3							//'indicators'
        &pushsdbgm 4							//'length'
        &lessThan
        &not
        &jnz label9        
        &pushsdbgv 3							//'indicators'
        &pushregister 1
        &getMember
        &pushregister 2
        &equals
        &not
        &jnz label8        
        &pushone
        &pushregister 1
        &pushbyte 2
        &pushsdbgv 3							//'indicators'
        &dcallmp 14							// splice()
        &jmp label9        
       label8:
        &pushregister 1
        &increment
        &setRegister r:1
        &pop
        &jmp label7        
       label9:
        &pushzero
        &pushregister 2
        &dcallmp 15							// removeMovieClip()
      &end // of function DestroyIndicator

      &function onUnload (      )      
        &pushsdb 16							//'Resize'
        &delete2
        &pop
        &pushsdb 17							//'AddIndicator'
        &delete2
        &pop
        &pushsdb 18							//'RemoveIndicator'
        &delete2
        &pop
        &pushsdb 19							//'MoveIndicator'
        &delete2
        &pop
        &pushsdb 9							//'DestroyIndicator'
        &delete2
        &pop
        &pushsdb 20							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 21							//'initialized'
      &not
      &not
      &jnz label10      
      &pushsdb 3							//'indicators'
      &pushzero
      &pushsdb 22							//'Array'
      &new
      &setVariable
      &pushsdb 21							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 23							//'FSCommand:'
      &pushsdb 24							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 26							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 27							//''
      &getURL2
      &pushsdbgv 28							//'extern'
      &pushsdbgm 29							//'InGame'
      &not
      &not
      &jnz label10      
      &pushsdb 30							//'Def'
      &pushzero
      &pushbyte 2
      &dcallfp 17							// AddIndicator()
      &pushfloat 0.500000000000000
      &pushfloat 0.250000000000000
      &pushzero
      &pushbyte 3
      &dcallfp 19							// MoveIndicator()
      &pushsdb 31							//'Air'
      &pushone
      &pushbyte 2
      &dcallfp 17							// AddIndicator()
      &pushfloat 0.500000000000000
      &pushfloat 0.750000000000000
      &pushone
      &pushbyte 3
      &dcallfp 19							// MoveIndicator()
     label10:
      &stop
    &end // of frame 0

    &placeMovieClip 73 &as 'sizer'
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 73
  &end // of defineMovieClip 81

  &defineMovieClip 82 // total frames: 1

    &frame 0
      &constants 'sizer', '_width', '_height', 'indicators', 'length', 'relX', 'relY', '_x', '_y', 'nextIndicatorId', 'MpBeaconIndicator', 'attachMovie', 'beaconColor', 'push', 'inGame', 'Pointer', 'encode', 'splice', 'removeMovieClip', 'Resize', 'AddMpBeaconIndicator', 'RemoveIndicator', 'MoveIndicator', 'onUnload', 'extern', 'InGame', 'initialized', 'Array', 'FSCommand:', 'OnInitialized', 'this', 'qualifyName', ''  
      &function2 Resize (r:4='newWidth', r:3='newHeight') ()
        &pushsdbgv 0							//'sizer'
        &pushsdb 1							//'_width'
        &pushregister 4
        &setMember
        &pushsdbgv 0							//'sizer'
        &pushsdb 2							//'_height'
        &pushregister 3
        &setMember
        &pushzero
        &setRegister r:2
        &pop
       label1:
        &pushregister 2
        &pushsdbgv 3							//'indicators'
        &pushsdbgm 4							//'length'
        &lessThan
        &not
        &jnz label5        
        &pushsdbgv 3							//'indicators'
        &pushregister 2
        &getMember
        &setRegister r:1
        &pop
        &pushregister 1
        &pushundef
        &equals
        &not
        &dup
        &not
        &jnz label2        
        &pop
        &pushregister 1
        &pushsdbgm 5							//'relX'
        &pushundef
        &equals
        &not
       label2:
        &dup
        &not
        &jnz label3        
        &pop
        &pushregister 1
        &pushsdbgm 6							//'relY'
        &pushundef
        &equals
        &not
       label3:
        &not
        &jnz label4        
        &pushregister 1
        &pushsdb 7							//'_x'
        &pushregister 1
        &pushsdbgm 5							//'relX'
        &pushregister 4
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 8							//'_y'
        &pushregister 1
        &pushsdbgm 6							//'relY'
        &pushregister 3
        &multiply
        &setMember
       label4:
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label1        
       label5:
      &end // of function Resize

      &function2 AddMpBeaconIndicator (r:4='beaconColor') (r:1='this')
        &pushsdbgv 9							//'nextIndicatorId'
        &pushsdb 9							//'nextIndicatorId'
        &pushsdbgv 9							//'nextIndicatorId'
        &increment
        &setVariable
        &setRegister r:3
        &pop
        &pushregister 3
        &pushregister 3
        &toString
        &pushsdb 10							//'MpBeaconIndicator'
        &pushbyte 3
        &pushregister 1
        &pushsdb 11							//'attachMovie'
        &callMethod
        &setRegister r:2
        &pop
        &pushregister 2
        &pushsdb 12							//'beaconColor'
        &pushregister 4
        &setMember
        &pushregister 2
        &pushsdb 5							//'relX'
        &pushzero
        &setMember
        &pushregister 2
        &pushsdb 6							//'relY'
        &pushzero
        &setMember
        &pushregister 2
        &pushone
        &pushsdbgv 3							//'indicators'
        &dcallmp 13							// push()
        &pushsdbgv 14							//'inGame'
        &jnz label6        
        &pushregister 2
        &jmp label7        
       label6:
        &pushregister 2
        &pushone
        &pushsdbgv 15							//'Pointer'
        &pushsdb 16							//'encode'
        &callMethod
       label7:
        &return
      &end // of function AddMpBeaconIndicator

      &function2 RemoveIndicator (r:2='indicator') ()
        &pushzero
        &setRegister r:1
        &pop
       label8:
        &pushregister 1
        &pushsdbgv 3							//'indicators'
        &pushsdbgm 4							//'length'
        &lessThan
        &not
        &jnz label11        
        &pushsdbgv 3							//'indicators'
        &pushregister 1
        &getMember
        &pushregister 2
        &equals
        &not
        &jnz label10        
        &pushone
        &pushregister 1
        &pushbyte 2
        &pushsdbgv 3							//'indicators'
        &dcallmp 17							// splice()
        &pushsdbgv 3							//'indicators'
        &pushsdbgm 4							//'length'
        &pushzero
        &equals
        &not
        &jnz label9        
        &pushsdb 9							//'nextIndicatorId'
        &pushzerosv
       label9:
        &jmp label11        
       label10:
        &pushregister 1
        &increment
        &setRegister r:1
        &pop
        &jmp label8        
       label11:
        &pushzero
        &pushregister 2
        &dcallmp 18							// removeMovieClip()
      &end // of function RemoveIndicator

      &function2 MoveIndicator (r:1='indicator', r:3='relX', r:2='relY') ()
        &pushregister 1
        &pushsdb 5							//'relX'
        &pushregister 3
        &setMember
        &pushregister 1
        &pushsdb 6							//'relY'
        &pushregister 2
        &setMember
        &pushregister 1
        &pushsdb 7							//'_x'
        &pushregister 3
        &pushsdbgv 0							//'sizer'
        &pushsdbgm 1							//'_width'
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 8							//'_y'
        &pushregister 2
        &pushsdbgv 0							//'sizer'
        &pushsdbgm 2							//'_height'
        &multiply
        &setMember
      &end // of function MoveIndicator

      &function onUnload (      )      
        &pushsdb 19							//'Resize'
        &delete2
        &pop
        &pushsdb 20							//'AddMpBeaconIndicator'
        &delete2
        &pop
        &pushsdb 21							//'RemoveIndicator'
        &delete2
        &pop
        &pushsdb 22							//'MoveIndicator'
        &delete2
        &pop
        &pushsdb 23							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdb 14							//'inGame'
      &pushsdbgv 24							//'extern'
      &pushsdbgm 25							//'InGame'
      &setVariable
      &pushsdbgv 26							//'initialized'
      &not
      &not
      &jnz label12      
      &pushsdb 9							//'nextIndicatorId'
      &pushzerosv
      &pushsdb 3							//'indicators'
      &pushzero
      &pushsdb 27							//'Array'
      &new
      &setVariable
      &pushsdb 26							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 28							//'FSCommand:'
      &pushsdb 29							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 31							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 32							//''
      &getURL2
      &pushsdbgv 14							//'inGame'
      &not
      &not
      &jnz label12      
      &pushfloat 0.899999976158142
      &pushfloat 0.899999976158142
      &pushlong 65280
      &pushone
      &pushsdb 20							//'AddMpBeaconIndicator'
      &callFunction
      &pushbyte 3
      &dcallfp 22							// MoveIndicator()
     label12:
      &stop
    &end // of frame 0

    &placeMovieClip 73 &as 'sizer'
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 73
  &end // of defineMovieClip 82

  &defineMovieClip 83 // total frames: 1

    &frame 0
      &constants 'sizer', '_width', '_height', 'pings', 'length', 'relX', 'relY', '_x', '_y', 'nextPingId', 'attachMovie', 'pingColor', 'push', 'inGame', 'Pointer', 'encode', 'done', 'splice', 'removeMovieClip', 'Resize', 'CreatePing', 'DetachPing', 'MovePing', 'DestroyPing', 'onUnload', 'extern', 'InGame', 'initialized', 'Array', 'FSCommand:', 'OnInitialized', 'this', 'qualifyName', '', 'PingPlayer', 'PingBeacon', 'PingUpgrade'  
      &function2 Resize (r:4='newWidth', r:3='newHeight') ()
        &pushsdbgv 0							//'sizer'
        &pushsdb 1							//'_width'
        &pushregister 4
        &setMember
        &pushsdbgv 0							//'sizer'
        &pushsdb 2							//'_height'
        &pushregister 3
        &setMember
        &pushundef
        &setRegister r:2
        &pop
        &pushzero
        &setRegister r:2
        &pop
       label1:
        &pushregister 2
        &pushsdbgv 3							//'pings'
        &pushsdbgm 4							//'length'
        &lessThan
        &not
        &jnz label5        
        &pushsdbgv 3							//'pings'
        &pushregister 2
        &getMember
        &setRegister r:1
        &pop
        &pushregister 1
        &pushundef
        &equals
        &not
        &dup
        &not
        &jnz label2        
        &pop
        &pushregister 1
        &pushsdbgm 5							//'relX'
        &pushundef
        &equals
        &not
       label2:
        &dup
        &not
        &jnz label3        
        &pop
        &pushregister 1
        &pushsdbgm 6							//'relY'
        &pushundef
        &equals
        &not
       label3:
        &not
        &jnz label4        
        &pushregister 1
        &pushsdb 7							//'_x'
        &pushregister 1
        &pushsdbgm 5							//'relX'
        &pushregister 4
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 8							//'_y'
        &pushregister 1
        &pushsdbgm 6							//'relY'
        &pushregister 3
        &multiply
        &setMember
       label4:
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label1        
       label5:
      &end // of function Resize

      &function2 CreatePing (r:4='type', r:3='pingColor') ()
        &pushsdbgv 9							//'nextPingId'
        &pushsdb 9							//'nextPingId'
        &pushsdbgv 9							//'nextPingId'
        &increment
        &setVariable
        &setRegister r:2
        &pop
        &pushregister 2
        &pushregister 2
        &toString
        &pushregister 4
        &pushbyte 3
        &pushsdb 10							//'attachMovie'
        &callFunction
        &setRegister r:1
        &pop
        &pushregister 1
        &pushsdb 5							//'relX'
        &pushzero
        &setMember
        &pushregister 1
        &pushsdb 6							//'relY'
        &pushzero
        &setMember
        &pushregister 1
        &pushsdb 11							//'pingColor'
        &pushregister 3
        &setMember
        &pushregister 1
        &pushone
        &pushsdbgv 3							//'pings'
        &dcallmp 12							// push()
        &pushsdbgv 13							//'inGame'
        &jnz label6        
        &pushregister 1
        &jmp label7        
       label6:
        &pushregister 1
        &pushone
        &pushsdbgv 14							//'Pointer'
        &pushsdb 15							//'encode'
        &callMethod
       label7:
        &return
      &end // of function CreatePing

      &function2 DetachPing (r:1='ping') ()
        &pushregister 1
        &pushundef
        &equals
        &not
        &not
        &jnz label8        
        &pushregister 1
        &pushsdb 16							//'done'
        &pushtrue
        &setMember
       label8:
      &end // of function DetachPing

      &function2 MovePing (r:1='ping', r:3='relX', r:2='relY') ()
        &pushregister 1
        &pushundef
        &equals
        &not
        &not
        &jnz label9        
        &pushregister 1
        &pushsdb 5							//'relX'
        &pushregister 3
        &setMember
        &pushregister 1
        &pushsdb 6							//'relY'
        &pushregister 2
        &setMember
        &pushregister 1
        &pushsdb 7							//'_x'
        &pushregister 3
        &pushsdbgv 0							//'sizer'
        &pushsdbgm 1							//'_width'
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 8							//'_y'
        &pushregister 2
        &pushsdbgv 0							//'sizer'
        &pushsdbgm 2							//'_height'
        &multiply
        &setMember
       label9:
      &end // of function MovePing

      &function2 DestroyPing (r:2='ping') ()
        &pushzero
        &setRegister r:1
        &pop
       label10:
        &pushregister 1
        &pushsdbgv 3							//'pings'
        &pushsdbgm 4							//'length'
        &lessThan
        &not
        &jnz label12        
        &pushsdbgv 3							//'pings'
        &pushregister 1
        &getMember
        &pushregister 2
        &equals
        &not
        &jnz label11        
        &pushone
        &pushregister 1
        &pushbyte 2
        &pushsdbgv 3							//'pings'
        &dcallmp 17							// splice()
        &jmp label12        
       label11:
        &pushregister 1
        &increment
        &setRegister r:1
        &pop
        &jmp label10        
       label12:
        &pushzero
        &pushregister 2
        &dcallmp 18							// removeMovieClip()
        &pushsdbgv 3							//'pings'
        &pushsdbgm 4							//'length'
        &pushzero
        &greaterThan
        &not
        &not
        &jnz label13        
        &pushsdb 9							//'nextPingId'
        &pushzerosv
       label13:
      &end // of function DestroyPing

      &function onUnload (      )      
        &pushsdb 19							//'Resize'
        &delete2
        &pop
        &pushsdb 20							//'CreatePing'
        &delete2
        &pop
        &pushsdb 21							//'DetachPing'
        &delete2
        &pop
        &pushsdb 22							//'MovePing'
        &delete2
        &pop
        &pushsdb 23							//'DestroyPing'
        &delete2
        &pop
        &pushsdb 24							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdb 13							//'inGame'
      &pushsdbgv 25							//'extern'
      &pushsdbgm 26							//'InGame'
      &setVariable
      &pushsdbgv 27							//'initialized'
      &not
      &not
      &jnz label14      
      &pushsdb 9							//'nextPingId'
      &pushzerosv
      &pushsdb 3							//'pings'
      &pushzero
      &pushsdb 28							//'Array'
      &new
      &setVariable
      &pushsdb 27							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 29							//'FSCommand:'
      &pushsdb 30							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 32							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 33							//''
      &getURL2
      &pushsdbgv 25							//'extern'
      &pushsdbgm 26							//'InGame'
      &not
      &not
      &jnz label14      
      &pushfloat 0.500000000000000
      &pushfloat 0.500000000000000
      &pushfloat 4278190336.000000000000000
      &pushsdb 34							//'PingPlayer'
      &pushbyte 2
      &pushsdb 20							//'CreatePing'
      &callFunction
      &pushbyte 3
      &dcallfp 22							// MovePing()
      &pushfloat 0.250000000000000
      &pushfloat 0.250000000000000
      &pushsdb 35							//'PingBeacon'
      &pushone
      &pushsdb 20							//'CreatePing'
      &callFunction
      &pushbyte 3
      &dcallfp 22							// MovePing()
      &pushfloat 0.250000000000000
      &pushfloat 0.750000000000000
      &pushsdb 36							//'PingUpgrade'
      &pushone
      &pushsdb 20							//'CreatePing'
      &callFunction
      &pushbyte 3
      &dcallfp 22							// MovePing()
     label14:
      &stop
    &end // of frame 0

    &placeMovieClip 73 &as 'sizer'
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 73
  &end // of defineMovieClip 83

  &defineMovieClip 84 // total frames: 1

    &frame 0
      &constants 'objectiveStage', 'OnObjectiveStageLoaded', 'coOpAITargetLayer', 'OnCoOpAITargetLayerLoaded', 'hotSpotLayer', 'OnHotSpotLayerLoaded', 'bridgeLayerMC', 'OnBridgeLayerLoaded', 'OnContentLoaded', 'onUnload', 'initialized', '../../common/hud/ig_RadarObjectivesLayer.swf', 'loadMovie', '../../common/hud/ig_RadarCoOpAITargetLayer.swf', 'ig_missionMapHotSpotLayer.swf', 'ig_RadarBridgeLayer.swf'  
      &function2 OnContentLoaded (r:2='contentClip') (r:1='_parent')
        &pushregister 2
        &pushsdbgv 0							//'objectiveStage'
        &equals
        &not
        &jnz label1        
        &pushregister 2
        &pushone
        &pushregister 1
        &dcallmp 1							// OnObjectiveStageLoaded()
        &jmp label4        
       label1:
        &pushregister 2
        &pushsdbgv 2							//'coOpAITargetLayer'
        &equals
        &not
        &jnz label2        
        &pushregister 2
        &pushone
        &pushregister 1
        &dcallmp 3							// OnCoOpAITargetLayerLoaded()
        &jmp label4        
       label2:
        &pushregister 2
        &pushsdbgv 4							//'hotSpotLayer'
        &equals
        &not
        &jnz label3        
        &pushregister 2
        &pushone
        &pushregister 1
        &dcallmp 5							// OnHotSpotLayerLoaded()
        &jmp label4        
       label3:
        &pushregister 2
        &pushsdbgv 6							//'bridgeLayerMC'
        &equals
        &not
        &jnz label4        
        &pushregister 2
        &pushone
        &pushregister 1
        &dcallmp 7							// OnBridgeLayerLoaded()
       label4:
      &end // of function OnContentLoaded

      &function onUnload (      )      
        &pushsdb 8							//'OnContentLoaded'
        &delete2
        &pop
        &pushsdb 9							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 10							//'initialized'
      &not
      &not
      &jnz label5      
      &pushsdb 11							//'../../common/hud/ig_RadarObjectivesLayer.swf'
      &pushone
      &pushsdbgv 0							//'objectiveStage'
      &dcallmp 12							// loadMovie()
      &pushsdb 13							//'../../common/hud/ig_RadarCoOpAITargetLayer.swf'
      &pushone
      &pushsdbgv 2							//'coOpAITargetLayer'
      &dcallmp 12							// loadMovie()
      &pushsdb 14							//'ig_missionMapHotSpotLayer.swf'
      &pushone
      &pushsdbgv 4							//'hotSpotLayer'
      &dcallmp 12							// loadMovie()
      &pushsdb 15							//'ig_RadarBridgeLayer.swf'
      &pushone
      &pushsdbgv 6							//'bridgeLayerMC'
      &dcallmp 12							// loadMovie()
      &pushsdb 10							//'initialized'
      &pushtrue
      &setVariable
     label5:
    &end // of frame 0
  &end // of defineMovieClip 84

  &defineMovieClip 86 // total frames: 1

    &placeMovieClip 73 
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 73
  &end // of defineMovieClip 86

  &defineMovieClip 93 // total frames: 30

    &frame 0
      &constants 'DetachFactionObserver', 'OnCurrentFactionChanged', 'onUnload', 'factionSkinned', '_root', 'GetCurrentFaction', 'this', 'AttachFactionObserver'  
      &function2 OnCurrentFactionChanged (r:1='faction') ()
        &pushregister 1
        &gotoAndPlay      &end // of function OnCurrentFactionChanged

      &function2 onUnload () (r:1='this', r:2='_root')
        &pushregister 1
        &pushone
        &pushregister 2
        &dcallmp 0							// DetachFactionObserver()
        &pushsdb 1							//'OnCurrentFactionChanged'
        &delete2
        &pop
        &pushsdb 2							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 3							//'factionSkinned'
      &not
      &not
      &jnz label1      
      &pushzero
      &pushsdbgv 4							//'_root'
      &pushsdb 5							//'GetCurrentFaction'
      &callMethod
      &gotoAndPlay      &pushthisgv
      &pushone
      &pushsdbgv 4							//'_root'
      &dcallmp 7							// AttachFactionObserver()
      &pushsdb 3							//'factionSkinned'
      &pushtrue
      &setVariable
     label1:
    &end // of frame 0

    &frame 9
      &stop
    &end // of frame 9

    &frame 19
      &stop
    &end // of frame 19

    &frame 29
      &stop
    &end // of frame 29
  &end // of defineMovieClip 93

  &defineMovieClip 96 // total frames: 1
  &end // of defineMovieClip 96

  &defineMovieClip 97 // total frames: 4
  &end // of defineMovieClip 97

  &defineMovieClip 100 // total frames: 1
  &end // of defineMovieClip 100

  &defineMovieClip 103 // total frames: 1
  &end // of defineMovieClip 103

  &defineMovieClip 104 // total frames: 32

    &frame 17
      &stop
    &end // of frame 17
  &end // of defineMovieClip 104

  &defineMovieClip 105 // total frames: 26

    &frame 21
      &stop
    &end // of frame 21
  &end // of defineMovieClip 105

  &defineMovieClip 106 // total frames: 48

    &frame 0
      &stop
    &end // of frame 0

    &frame 1
      &play
    &end // of frame 1

    &frame 16
      &pushzero
      &pushs 'onOpened'
      &callfp
    &end // of frame 16

    &frame 24
      &pushs ''
      &pushbyte 7
      &pushfalse
      &setProperty
      &stop
    &end // of frame 24

    &frame 25
      &pushs ''
      &pushbyte 7
      &pushtrue
      &setProperty
      &play
    &end // of frame 25

    &frame 40
      &pushzero
      &pushs 'onClosed'
      &callfp
    &end // of frame 40

    &frame 47
      &stop
    &end // of frame 47
  &end // of defineMovieClip 106

  &defineMovieClip 109 // total frames: 1
  &end // of defineMovieClip 109

  &placeMovieClip 109 &as 'jammedMessage'
  
    &onClipEvent &load
      &pushs 'text'
      &pushs '$'
      &pushs 'JammedMessage'
      &pushsgv '_parent'
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &add
      &pushs '&outline'
      &add
      &setVariable
    &end
  &end // of placeMovieClip 109
&end
