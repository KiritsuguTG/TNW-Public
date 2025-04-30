movie 'C:\projects\Ra3\PRODUC~1\Data\APTBUI~1\034A3~1.0-D\pc\Output\ig_missionMap\\ig_missionMap.eaf' &compressed // flash 7, total frames: 1, frame rate: 30 fps, 1024x768 px

  &defineButton 2
  
    &on     &overDownToOverUp
      &pushzero
      &pushs 'OnClicked'
      &callfp
    &end
  &end // of defineButton 2

  &defineMovieClip 13 // total frames: 25

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

    &frame 24
      &stop
    &end // of frame 24
  &end // of defineMovieClip 13

  &defineMovieClip 24 // total frames: 25

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

    &frame 24
      &stop
    &end // of frame 24
  &end // of defineMovieClip 24

  &defineMovieClip 27 // total frames: 1
  &end // of defineMovieClip 27
  
  &importAssets &from '../../common/hud/ig_libHUD.swf'
    'LoadMovieStage' &as 28
  &end // of importAssets

  &defineMovieClip 29 // total frames: 1

    &frame 0
      &constants 'MoveIndicator', 'isSelected', '', 'getDepth', 'swapDepths', 'initialized', 'FSCommand:', 'OnInitialized', 'qualifyName', 'OnClipDestroyed', 'ObjectiveIndicator OnClicked(), this = ', 'OnClicked', 'Move', 'SetSelected', 'SetVisibility', 'OnBound', 'OnDestroying', 'onUnload', 'textMC', 'text', '$', 'Ordinal', 'this', 'category', 'primary', 'gotoAndPlay', 'bonus', 'isBonus', '_visible'  
      &function2 Move (r:4='newX', r:3='newY') (r:1='this', r:2='_parent')
        &pushregister 3
        &pushregister 4
        &pushregister 1
        &pushbyte 3
        &pushregister 2
        &dcallmp 0							// MoveIndicator()
      &end // of function Move

      &function2 SetSelected (r:3='val') ()
        &pushregister 3
        &pushzero
        &equals
        &not
        &setRegister r:1
        &pop
        &pushregister 1
        &pushsdbgv 1							//'isSelected'
        &equals
        &not
        &not
        &jnz label5        
        &pushsdb 1							//'isSelected'
        &pushregister 1
        &setVariable
        &pushsdb 2							//''
        &pushbyte 6
        &pushregister 1
        &jnz label1        
        &pushbyte 50
        &jmp label2        
       label1:
        &pushbyte 100
       label2:
        &setProperty
        &pushzero
        &pushsdb 3							//'getDepth'
        &callFunction
        &setRegister r:2
        &pop
        &pushregister 1
        &not
        &jnz label3        
        &pushregister 2
        &pushshort 1000
        &add
        &setRegister r:2
        &pop
        &jmp label4        
       label3:
        &pushregister 2
        &pushshort 1000
        &subtract
        &setRegister r:2
        &pop
       label4:
        &pushregister 2
        &pushone
        &dcallfp 4							// swapDepths()
       label5:
      &end // of function SetSelected

      &function2 SetVisibility (r:1='val') ()
        &pushsdb 2							//''
        &pushbyte 7
        &pushregister 1
        &pushzero
        &equals
        &not
        &setProperty
      &end // of function SetVisibility

      &function2 OnBound () (r:1='this')
        &pushsdbgv 5							//'initialized'
        &not
        &jnz label6        
        &pushsdb 6							//'FSCommand:'
        &pushsdb 7							//'OnInitialized'
        &pushregister 1
        &pushbyte 2
        &pushsdb 8							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 2							//''
        &getURL2
       label6:
      &end // of function OnBound

      &function2 OnDestroying () (r:1='this')
        &pushsdbgv 5							//'initialized'
        &not
        &jnz label7        
        &pushsdb 6							//'FSCommand:'
        &pushsdb 9							//'OnClipDestroyed'
        &pushregister 1
        &pushbyte 2
        &pushsdb 8							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 2							//''
        &getURL2
       label7:
      &end // of function OnDestroying

      &function2 OnClicked () (r:1='this')
        &pushsdb 10							//'ObjectiveIndicator OnClicked(), this = '
        &pushregister 1
        &toString
        &add
        &trace
        &pushsdb 6							//'FSCommand:'
        &pushsdb 11							//'OnClicked'
        &pushregister 1
        &pushbyte 2
        &pushsdb 8							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 2							//''
        &getURL2
      &end // of function OnClicked

      &function onUnload (      )      
        &pushsdb 12							//'Move'
        &delete2
        &pop
        &pushsdb 13							//'SetSelected'
        &delete2
        &pop
        &pushsdb 14							//'SetVisibility'
        &delete2
        &pop
        &pushsdb 15							//'OnBound'
        &delete2
        &pop
        &pushsdb 16							//'OnDestroying'
        &delete2
        &pop
        &pushsdb 11							//'OnClicked'
        &delete2
        &pop
        &pushsdb 17							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 5							//'initialized'
      &not
      &not
      &jnz label10      
      &pushsdbgv 18							//'textMC'
      &pushsdb 19							//'text'
      &pushsdb 20							//'$'
      &pushsdb 21							//'Ordinal'
      &pushthisgv
      &pushbyte 2
      &pushsdb 8							//'qualifyName'
      &callFunction
      &add
      &setMember
      &pushsdbgv 23							//'category'
      &pushone
      &pushsdbgv 24							//'primary'
      &dcallmp 25							// gotoAndPlay()
      &pushsdbgv 23							//'category'
      &pushone
      &pushsdbgv 26							//'bonus'
      &dcallmp 25							// gotoAndPlay()
      &pushsdbgv 27							//'isBonus'
      &not
      &jnz label8      
      &pushsdbgv 24							//'primary'
      &pushsdb 28							//'_visible'
      &pushfalse
      &setMember
      &jmp label9      
     label8:
      &pushsdbgv 26							//'bonus'
      &pushsdb 28							//'_visible'
      &pushfalse
      &setMember
     label9:
      &pushsdb 1							//'isSelected'
      &pushfalse
      &setVariable
      &pushsdb 2							//''
      &pushbyte 6
      &pushbyte 50
      &setProperty
      &pushsdb 5							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 6							//'FSCommand:'
      &pushsdb 7							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 8							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 2							//''
      &getURL2
     label10:
    &end // of frame 0
  &end // of defineMovieClip 29
  
  &exportAssets
    29 &as 'ObjectiveIndicator'
  &end // of exportAssets

  &defineMovieClip 31 // total frames: 1
  &end // of defineMovieClip 31
  
  &exportAssets
    31 &as 'SimpleRenderingSurfaceContentPlaceholder'
  &end // of exportAssets

  &defineMovieClip 36 // total frames: 20

    &frame 0
      &constants 'MoveIndicator', 'Color', 'setRGB', 'initialized', 'FSCommand:', 'OnInitialized', 'qualifyName', '', 'OnClipDestroyed', 'Move', 'SetColor', 'OnBound', 'OnDestroying', 'onUnload', 'structureType', 'this'  
      &function2 Move (r:4='newX', r:3='newY') (r:1='this', r:2='_parent')
        &pushregister 3
        &pushregister 4
        &pushregister 1
        &pushbyte 3
        &pushregister 2
        &dcallmp 0							// MoveIndicator()
      &end // of function Move

      &function2 SetColor (r:3='newColor') (r:1='this')
        &pushregister 1
        &pushone
        &pushsdb 1							//'Color'
        &new
        &setRegister r:2
        &pop
        &pushregister 3
        &pushone
        &pushregister 2
        &dcallmp 2							// setRGB()
      &end // of function SetColor

      &function2 OnBound () (r:1='this')
        &pushsdbgv 3							//'initialized'
        &not
        &jnz label1        
        &pushsdb 4							//'FSCommand:'
        &pushsdb 5							//'OnInitialized'
        &pushregister 1
        &pushbyte 2
        &pushsdb 6							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 7							//''
        &getURL2
       label1:
      &end // of function OnBound

      &function2 OnDestroying () (r:1='this')
        &pushsdbgv 3							//'initialized'
        &not
        &jnz label2        
        &pushsdb 4							//'FSCommand:'
        &pushsdb 8							//'OnClipDestroyed'
        &pushregister 1
        &pushbyte 2
        &pushsdb 6							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 7							//''
        &getURL2
       label2:
      &end // of function OnDestroying

      &function onUnload (      )      
        &pushsdb 9							//'Move'
        &delete2
        &pop
        &pushsdb 10							//'SetColor'
        &delete2
        &pop
        &pushsdb 11							//'OnBound'
        &delete2
        &pop
        &pushsdb 12							//'OnDestroying'
        &delete2
        &pop
        &pushsdb 13							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 3							//'initialized'
      &not
      &not
      &jnz label3      
      &pushsdbgv 14							//'structureType'
      &gotoAndPlay      &pushsdb 3							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 4							//'FSCommand:'
      &pushsdb 5							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 6							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 7							//''
      &getURL2
     label3:
    &end // of frame 0

    &frame 9
      &stop
    &end // of frame 9

    &frame 19
      &stop
    &end // of frame 19
  &end // of defineMovieClip 36
  
  &exportAssets
    36 &as 'StructureIndicator'
  &end // of exportAssets

  &defineMovieClip 39 // total frames: 1
  &end // of defineMovieClip 39

  &defineMovieClip 40 // total frames: 20

    &frame 0
      &constants 'MoveIndicator', 'dot', 'Color', 'indicatorColor', 'setRGB', 'ColorizeDot', 'Shrouded', 'Revealed', 'initialized', 'FSCommand:', 'OnInitialized', 'qualifyName', '', 'OnClipDestroyed', 'Move', 'SetColor', 'SetRevealed', 'OnBound', 'OnDestroying', 'onUnload', 'this'  
      &function2 Move (r:4='newX', r:3='newY') (r:1='this', r:2='_parent')
        &pushregister 3
        &pushregister 4
        &pushregister 1
        &pushbyte 3
        &pushregister 2
        &dcallmp 0							// MoveIndicator()
      &end // of function Move

      &function2 ColorizeDot () ()
        &pushsdbgv 1							//'dot'
        &pushone
        &pushsdb 2							//'Color'
        &new
        &setRegister r:1
        &pop
        &pushsdbgv 3							//'indicatorColor'
        &pushone
        &pushregister 1
        &dcallmp 4							// setRGB()
      &end // of function ColorizeDot

      &function2 SetColor (r:1='newColor') ()
        &pushsdb 3							//'indicatorColor'
        &pushregister 1
        &setVariable
        &pushzero
        &dcallfp 5							// ColorizeDot()
      &end // of function SetColor

      &function2 SetRevealed (r:1='arg') ()
        &pushregister 1
        &pushzero
        &equals
        &not
        &jnz label1        
        &pushsdb 6							//'Shrouded'
        &jmp label2        
       label1:
        &pushsdb 7							//'Revealed'
       label2:
        &gotoAndPlay      &end // of function SetRevealed

      &function2 OnBound () (r:1='this')
        &pushsdbgv 8							//'initialized'
        &not
        &jnz label3        
        &pushsdb 9							//'FSCommand:'
        &pushsdb 10							//'OnInitialized'
        &pushregister 1
        &pushbyte 2
        &pushsdb 11							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 12							//''
        &getURL2
       label3:
      &end // of function OnBound

      &function2 OnDestroying () (r:1='this')
        &pushsdbgv 8							//'initialized'
        &not
        &jnz label4        
        &pushsdb 9							//'FSCommand:'
        &pushsdb 13							//'OnClipDestroyed'
        &pushregister 1
        &pushbyte 2
        &pushsdb 11							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 12							//''
        &getURL2
       label4:
      &end // of function OnDestroying

      &function onUnload (      )      
        &pushsdb 14							//'Move'
        &delete2
        &pop
        &pushsdb 15							//'SetColor'
        &delete2
        &pop
        &pushsdb 16							//'SetRevealed'
        &delete2
        &pop
        &pushsdb 17							//'OnBound'
        &delete2
        &pop
        &pushsdb 18							//'OnDestroying'
        &delete2
        &pop
        &pushsdb 19							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 8							//'initialized'
      &not
      &not
      &jnz label5      
      &pushsdb 3							//'indicatorColor'
      &pushlong 16777215
      &setVariable
      &pushsdb 8							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 9							//'FSCommand:'
      &pushsdb 10							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 11							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 12							//''
      &getURL2
     label5:
    &end // of frame 0

    &frame 9
      &stop
    &end // of frame 9

    &frame 10
      &pushzero
      &pushs 'ColorizeDot'
      &callfp
    &end // of frame 10

    &frame 19
      &stop
    &end // of frame 19
  &end // of defineMovieClip 40
  
  &exportAssets
    40 &as 'StartPosIndicator'
  &end // of exportAssets

  &frame 0
    &constants '_x', '_y', '_width', '_height', 'initialized', 'Resize', 'sizer', 'backgroundMC', 'terrainSurface', 'ResizeRenderingSurface', 'shroudSurface', 'objectiveLayer', 'ResizeIndicatorLayer', 'structureLayer', 'hotSpotLayer', 'startPosLayer', 'bridgeLayer', 'Pointer', 'encode', 'FSCommand:', 'OnInitialized', 'qualifyName', '', 'OnBound', 'ig_missionMap OnDestroying()', 'OnDestroying', 'OnClipDestroyed', 'ig_missionMap onUnload()', 'SetMapAspectRatio', 'GetObjectiveLayer', 'GetHotSpotLayer', 'GetBridgeLayer', 'GetStartPosLayer', 'GetTerrainRenderingSurface', 'GetShroudRenderingSurface', 'OnContentLoaded', 'onUnload', 'ig_missionMap loaded', 'this', '_parent', 'ig_missionMapHotSpotLayer.swf', 'loadMovie', 'ig_RadarBridgeLayer.swf'  
    &function2 ResizeRenderingSurface (r:1='surfaceClip', r:4='x', r:2='y', r:5='w', r:3='h') ()
      &pushregister 1
      &pushsdb 0							//'_x'
      &pushregister 4
      &setMember
      &pushregister 1
      &pushsdb 1							//'_y'
      &pushregister 2
      &setMember
      &pushregister 1
      &pushsdb 2							//'_width'
      &pushregister 5
      &setMember
      &pushregister 1
      &pushsdb 3							//'_height'
      &pushregister 3
      &setMember
    &end // of function ResizeRenderingSurface

    &function2 ResizeIndicatorLayer (r:1='layerClip', r:5='x', r:4='y', r:3='w', r:2='h') ()
      &pushregister 1
      &pushsdb 0							//'_x'
      &pushregister 5
      &setMember
      &pushregister 1
      &pushsdb 1							//'_y'
      &pushregister 4
      &setMember
      &pushregister 1
      &pushsdbgm 4							//'initialized'
      &not
      &jnz label1      
      &pushregister 2
      &pushregister 3
      &pushbyte 2
      &pushregister 1
      &dcallmp 5							// Resize()
      &jmp label2      
     label1:
      &pushregister 1
      &pushsdbgm 6							//'sizer'
      &pushsdb 2							//'_width'
      &pushregister 3
      &setMember
      &pushregister 1
      &pushsdbgm 6							//'sizer'
      &pushsdb 3							//'_height'
      &pushregister 2
      &setMember
     label2:
    &end // of function ResizeIndicatorLayer

    &function2 SetMapAspectRatio (r:9='mapAspectRatio') ()
      &pushsdbgv 7							//'backgroundMC'
      &pushsdbgm 0							//'_x'
      &setRegister r:7
      &pop
      &pushsdbgv 7							//'backgroundMC'
      &pushsdbgm 1							//'_y'
      &setRegister r:8
      &pop
      &pushsdbgv 7							//'backgroundMC'
      &pushsdbgm 2							//'_width'
      &setRegister r:6
      &pop
      &pushsdbgv 7							//'backgroundMC'
      &pushsdbgm 3							//'_height'
      &setRegister r:5
      &pop
      &pushregister 6
      &pushregister 5
      &divide
      &setRegister r:10
      &pop
      &pushundef
      &setRegister r:4
      &pop
      &pushundef
      &setRegister r:3
      &pop
      &pushundef
      &setRegister r:1
      &pop
      &pushundef
      &setRegister r:2
      &pop
      &pushregister 9
      &pushregister 10
      &lessThan
      &not
      &not
      &jnz label3      
      &pushregister 7
      &setRegister r:4
      &pop
      &pushregister 6
      &setRegister r:1
      &pop
      &pushregister 1
      &pushregister 9
      &divide
      &setRegister r:2
      &pop
      &pushregister 8
      &pushregister 5
      &pushregister 2
      &subtract
      &pushfloat 0.500000000000000
      &multiply
      &add
      &setRegister r:3
      &pop
      &jmp label4      
     label3:
      &pushregister 8
      &setRegister r:3
      &pop
      &pushregister 5
      &setRegister r:2
      &pop
      &pushregister 2
      &pushregister 9
      &multiply
      &setRegister r:1
      &pop
      &pushregister 7
      &pushregister 6
      &pushregister 1
      &subtract
      &pushfloat 0.500000000000000
      &multiply
      &add
      &setRegister r:4
      &pop
     label4:
      &pushregister 2
      &pushregister 1
      &pushregister 3
      &pushregister 4
      &pushsdbgv 8							//'terrainSurface'
      &pushbyte 5
      &dcallfp 9							// ResizeRenderingSurface()
      &pushregister 2
      &pushregister 1
      &pushregister 3
      &pushregister 4
      &pushsdbgv 10							//'shroudSurface'
      &pushbyte 5
      &dcallfp 9							// ResizeRenderingSurface()
      &pushregister 2
      &pushregister 1
      &pushregister 3
      &pushregister 4
      &pushsdbgv 11							//'objectiveLayer'
      &pushbyte 5
      &dcallfp 12							// ResizeIndicatorLayer()
      &pushregister 2
      &pushregister 1
      &pushregister 3
      &pushregister 4
      &pushsdbgv 13							//'structureLayer'
      &pushbyte 5
      &dcallfp 12							// ResizeIndicatorLayer()
      &pushregister 2
      &pushregister 1
      &pushregister 3
      &pushregister 4
      &pushsdbgv 14							//'hotSpotLayer'
      &pushbyte 5
      &dcallfp 12							// ResizeIndicatorLayer()
      &pushregister 2
      &pushregister 1
      &pushregister 3
      &pushregister 4
      &pushsdbgv 15							//'startPosLayer'
      &pushbyte 5
      &dcallfp 12							// ResizeIndicatorLayer()
      &pushregister 2
      &pushregister 1
      &pushregister 3
      &pushregister 4
      &pushsdbgv 16							//'bridgeLayer'
      &pushbyte 5
      &dcallfp 12							// ResizeIndicatorLayer()
    &end // of function SetMapAspectRatio

    &function GetObjectiveLayer (    )    
      &pushsdbgv 11							//'objectiveLayer'
      &pushone
      &pushsdbgv 17							//'Pointer'
      &pushsdb 18							//'encode'
      &callMethod
      &return
    &end // of function GetObjectiveLayer

    &function GetStructureLayer (    )    
      &pushsdbgv 13							//'structureLayer'
      &pushone
      &pushsdbgv 17							//'Pointer'
      &pushsdb 18							//'encode'
      &callMethod
      &return
    &end // of function GetStructureLayer

    &function GetHotSpotLayer (    )    
      &pushsdbgv 14							//'hotSpotLayer'
      &pushone
      &pushsdbgv 17							//'Pointer'
      &pushsdb 18							//'encode'
      &callMethod
      &return
    &end // of function GetHotSpotLayer

    &function GetBridgeLayer (    )    
      &pushsdbgv 16							//'bridgeLayer'
      &pushone
      &pushsdbgv 17							//'Pointer'
      &pushsdb 18							//'encode'
      &callMethod
      &return
    &end // of function GetBridgeLayer

    &function GetStartPosLayer (    )    
      &pushsdbgv 15							//'startPosLayer'
      &pushone
      &pushsdbgv 17							//'Pointer'
      &pushsdb 18							//'encode'
      &callMethod
      &return
    &end // of function GetStartPosLayer

    &function GetTerrainRenderingSurface (    )    
      &pushsdbgv 8							//'terrainSurface'
      &pushone
      &pushsdbgv 17							//'Pointer'
      &pushsdb 18							//'encode'
      &callMethod
      &return
    &end // of function GetTerrainRenderingSurface

    &function GetShroudRenderingSurface (    )    
      &pushsdbgv 10							//'shroudSurface'
      &pushone
      &pushsdbgv 17							//'Pointer'
      &pushsdb 18							//'encode'
      &callMethod
      &return
    &end // of function GetShroudRenderingSurface

    &function2 OnBound () (r:1='this')
      &pushsdbgv 4							//'initialized'
      &not
      &jnz label5      
      &pushsdb 19							//'FSCommand:'
      &pushsdb 20							//'OnInitialized'
      &pushregister 1
      &pushbyte 2
      &pushsdb 21							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 22							//''
      &getURL2
     label5:
      &pushzero
      &pushsdbgv 10							//'shroudSurface'
      &dcallmp 23							// OnBound()
      &pushzero
      &pushsdbgv 8							//'terrainSurface'
      &dcallmp 23							// OnBound()
      &pushzero
      &pushsdbgv 11							//'objectiveLayer'
      &dcallmp 23							// OnBound()
      &pushzero
      &pushsdbgv 13							//'structureLayer'
      &dcallmp 23							// OnBound()
      &pushzero
      &pushsdbgv 14							//'hotSpotLayer'
      &dcallmp 23							// OnBound()
      &pushzero
      &pushsdbgv 15							//'startPosLayer'
      &dcallmp 23							// OnBound()
      &pushzero
      &pushsdbgv 16							//'bridgeLayer'
      &dcallmp 23							// OnBound()
    &end // of function OnBound

    &function2 OnDestroying () (r:1='this')
      &pushsdb 24							//'ig_missionMap OnDestroying()'
      &trace
      &pushzero
      &pushsdbgv 15							//'startPosLayer'
      &dcallmp 25							// OnDestroying()
      &pushzero
      &pushsdbgv 14							//'hotSpotLayer'
      &dcallmp 25							// OnDestroying()
      &pushzero
      &pushsdbgv 13							//'structureLayer'
      &dcallmp 25							// OnDestroying()
      &pushzero
      &pushsdbgv 11							//'objectiveLayer'
      &dcallmp 25							// OnDestroying()
      &pushzero
      &pushsdbgv 8							//'terrainSurface'
      &dcallmp 25							// OnDestroying()
      &pushzero
      &pushsdbgv 10							//'shroudSurface'
      &dcallmp 25							// OnDestroying()
      &pushzero
      &pushsdbgv 16							//'bridgeLayer'
      &dcallmp 25							// OnDestroying()
      &pushsdbgv 4							//'initialized'
      &not
      &jnz label6      
      &pushsdb 19							//'FSCommand:'
      &pushsdb 26							//'OnClipDestroyed'
      &pushregister 1
      &pushbyte 2
      &pushsdb 21							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 22							//''
      &getURL2
     label6:
    &end // of function OnDestroying

    &function2 OnContentLoaded (r:1='contentClip') ()
      &pushregister 1
      &pushsdbgv 14							//'hotSpotLayer'
      &equals
      &dup
      &jnz label7      
      &pop
      &pushregister 1
      &pushsdbgv 16							//'bridgeLayer'
      &equals
     label7:
      &not
      &jnz label8      
      &pushregister 1
      &pushsdb 0							//'_x'
      &pushsdbgv 11							//'objectiveLayer'
      &pushsdbgm 0							//'_x'
      &setMember
      &pushregister 1
      &pushsdb 1							//'_y'
      &pushsdbgv 11							//'objectiveLayer'
      &pushsdbgm 1							//'_y'
      &setMember
      &pushregister 1
      &pushsdbgm 6							//'sizer'
      &pushsdb 2							//'_width'
      &pushsdbgv 11							//'objectiveLayer'
      &pushsdbgm 6							//'sizer'
      &pushsdbgm 2							//'_width'
      &setMember
      &pushregister 1
      &pushsdbgm 6							//'sizer'
      &pushsdb 3							//'_height'
      &pushsdbgv 11							//'objectiveLayer'
      &pushsdbgm 6							//'sizer'
      &pushsdbgm 3							//'_height'
      &setMember
     label8:
    &end // of function OnContentLoaded

    &function onUnload (    )    
      &pushsdb 27							//'ig_missionMap onUnload()'
      &trace
      &pushsdb 9							//'ResizeRenderingSurface'
      &delete2
      &pop
      &pushsdb 12							//'ResizeIndicatorLayer'
      &delete2
      &pop
      &pushsdb 28							//'SetMapAspectRatio'
      &delete2
      &pop
      &pushsdb 29							//'GetObjectiveLayer'
      &delete2
      &pop
      &pushsdb 30							//'GetHotSpotLayer'
      &delete2
      &pop
      &pushsdb 31							//'GetBridgeLayer'
      &delete2
      &pop
      &pushsdb 32							//'GetStartPosLayer'
      &delete2
      &pop
      &pushsdb 33							//'GetTerrainRenderingSurface'
      &delete2
      &pop
      &pushsdb 34							//'GetShroudRenderingSurface'
      &delete2
      &pop
      &pushsdb 23							//'OnBound'
      &delete2
      &pop
      &pushsdb 25							//'OnDestroying'
      &delete2
      &pop
      &pushsdb 35							//'OnContentLoaded'
      &delete2
      &pop
      &pushsdb 36							//'onUnload'
      &delete2
      &pop
    &end // of function onUnload

    &pushsdbgv 4							//'initialized'
    &not
    &not
    &jnz label9    
    &pushsdb 37							//'ig_missionMap loaded'
    &trace
    &pushthisgv
    &pushone
    &pushsdbgv 39							//'_parent'
    &dcallmp 35							// OnContentLoaded()
    &pushsdb 40							//'ig_missionMapHotSpotLayer.swf'
    &pushone
    &pushsdbgv 14							//'hotSpotLayer'
    &dcallmp 41							// loadMovie()
    &pushsdb 42							//'ig_RadarBridgeLayer.swf'
    &pushone
    &pushsdbgv 16							//'bridgeLayer'
    &dcallmp 41							// loadMovie()
    &pushsdb 4							//'initialized'
    &pushtrue
    &setVariable
    &pushsdb 19							//'FSCommand:'
    &pushsdb 20							//'OnInitialized'
    &pushthisgv
    &pushbyte 2
    &pushsdb 21							//'qualifyName'
    &callFunction
    &concat
    &pushsdb 22							//''
    &getURL2
   label9:
  &end // of frame 0

  &defineMovieClip 42 // total frames: 1
  &end // of defineMovieClip 42

  &defineMovieClip 44 // total frames: 1
  &end // of defineMovieClip 44

  &defineMovieClip 45 // total frames: 1

    &frame 0
      &constants 'SimpleRenderingSurface OnDestroying()', 'initialized', 'FSCommand:', 'OnClipDestroyed', 'qualifyName', '', 'OnDestroying', 'onUnload', 'initContent', '_type', 'Render', 'this', '_x', 'shape', '_y', '_width', '_height', 'contentClip', 'content', 'SimpleRenderingSurfaceContentPlaceholder', 'attachMovie'  
      &function2 OnDestroying () (r:1='this')
        &pushsdb 0							//'SimpleRenderingSurface OnDestroying()'
        &trace
        &pushsdbgv 1							//'initialized'
        &not
        &jnz label1        
        &pushsdb 2							//'FSCommand:'
        &pushsdb 3							//'OnClipDestroyed'
        &pushregister 1
        &pushbyte 2
        &pushsdb 4							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 5							//''
        &getURL2
       label1:
      &end // of function OnDestroying

      &function onUnload (      )      
        &pushsdb 6							//'OnDestroying'
        &delete2
        &pop
        &pushsdb 7							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 1							//'initialized'
      &not
      &not
      &jnz label2      
      &pushsdb 8							//'initContent'
      &pushsdb 9							//'_type'
      &pushsdb 10							//'Render'
      &pushthisgv
      &pushbyte 2
      &pushsdb 4							//'qualifyName'
      &callFunction
      &pushsdb 12							//'_x'
      &pushsdbgv 13							//'shape'
      &pushsdbgm 12							//'_x'
      &pushsdb 14							//'_y'
      &pushsdbgv 13							//'shape'
      &pushsdbgm 14							//'_y'
      &pushsdb 15							//'_width'
      &pushsdbgv 13							//'shape'
      &pushsdbgm 15							//'_width'
      &pushsdb 16							//'_height'
      &pushsdbgv 13							//'shape'
      &pushsdbgm 16							//'_height'
      &pushbyte 5
      &initObject
      &varEquals
      &pushsdb 17							//'contentClip'
      &pushsdbgv 8							//'initContent'
      &pushzero
      &pushsdb 18							//'content'
      &pushsdb 19							//'SimpleRenderingSurfaceContentPlaceholder'
      &pushbyte 4
      &pushsdb 20							//'attachMovie'
      &callFunction
      &varEquals
      &pushsdb 1							//'initialized'
      &pushtrue
      &setVariable
     label2:
    &end // of frame 0

    &placeMovieClip 44 &as 'shape'
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 44
  &end // of defineMovieClip 45

  &defineMovieClip 46 // total frames: 1
  &end // of defineMovieClip 46

  &defineMovieClip 47 // total frames: 1

    &frame 0
      &constants 'nextIndicatorId', 'StructureIndicator', 'attachMovie', 'structureType', 'relX', 'relY', 'indicators', 'push', 'Pointer', 'encode', 'length', 'splice', 'removeMovieClip', '_x', 'sizer', '_width', '_y', '_height', 'initialized', 'FSCommand:', 'OnInitialized', 'qualifyName', '', 'OnDestroying', 'OnClipDestroyed', 'AddIndicator', 'RemoveIndicator', 'MoveIndicator', 'OnBound', 'onUnload', 'Array', 'this'  
      &function2 AddIndicator (r:4='structureType') (r:1='this')
        &pushsdbgv 0							//'nextIndicatorId'
        &setRegister r:3
        &pop
        &pushsdb 0							//'nextIndicatorId'
        &pushsdbgv 0							//'nextIndicatorId'
        &increment
        &setVariable
        &pushregister 3
        &pushregister 3
        &toString
        &pushsdb 1							//'StructureIndicator'
        &pushbyte 3
        &pushregister 1
        &pushsdb 2							//'attachMovie'
        &callMethod
        &setRegister r:2
        &pop
        &pushregister 2
        &pushsdb 3							//'structureType'
        &pushregister 4
        &setMember
        &pushregister 2
        &pushsdb 4							//'relX'
        &pushzero
        &setMember
        &pushregister 2
        &pushsdb 5							//'relY'
        &pushzero
        &setMember
        &pushregister 2
        &pushone
        &pushsdbgv 6							//'indicators'
        &dcallmp 7							// push()
        &pushregister 2
        &pushone
        &pushsdbgv 8							//'Pointer'
        &pushsdb 9							//'encode'
        &callMethod
        &return
      &end // of function AddIndicator

      &function2 RemoveIndicator (r:3='indicator') ()
        &pushsdbgv 6							//'indicators'
        &pushsdbgm 10							//'length'
        &setRegister r:2
        &pop
        &pushzero
        &setRegister r:1
        &pop
       label1:
        &pushregister 1
        &pushregister 2
        &lessThan
        &not
        &jnz label4        
        &pushregister 3
        &pushsdbgv 6							//'indicators'
        &pushregister 1
        &getMember
        &equals
        &not
        &jnz label3        
        &pushone
        &pushregister 1
        &pushbyte 2
        &pushsdbgv 6							//'indicators'
        &dcallmp 11							// splice()
        &pushsdbgv 6							//'indicators'
        &pushsdbgm 10							//'length'
        &pushzero
        &equals
        &not
        &jnz label2        
        &pushsdb 0							//'nextIndicatorId'
        &pushzerosv
       label2:
        &jmp label4        
       label3:
        &pushregister 1
        &increment
        &setRegister r:1
        &pop
        &jmp label1        
       label4:
        &pushzero
        &pushregister 3
        &dcallmp 12							// removeMovieClip()
      &end // of function RemoveIndicator

      &function2 MoveIndicator (r:1='indicator', r:3='newX', r:2='newY') ()
        &pushregister 1
        &pushsdb 4							//'relX'
        &pushregister 3
        &setMember
        &pushregister 1
        &pushsdb 5							//'relY'
        &pushregister 2
        &setMember
        &pushregister 1
        &pushsdb 13							//'_x'
        &pushsdbgv 14							//'sizer'
        &pushsdbgm 15							//'_width'
        &pushregister 3
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 16							//'_y'
        &pushsdbgv 14							//'sizer'
        &pushsdbgm 17							//'_height'
        &pushregister 2
        &multiply
        &setMember
      &end // of function MoveIndicator

      &function2 Resize (r:5='newWidth', r:4='newHeight') ()
        &pushsdbgv 14							//'sizer'
        &pushsdb 15							//'_width'
        &pushregister 5
        &setMember
        &pushsdbgv 14							//'sizer'
        &pushsdb 17							//'_height'
        &pushregister 4
        &setMember
        &pushsdbgv 6							//'indicators'
        &pushsdbgm 10							//'length'
        &setRegister r:3
        &pop
        &pushzero
        &setRegister r:2
        &pop
       label5:
        &pushregister 2
        &pushregister 3
        &lessThan
        &not
        &jnz label6        
        &pushsdbgv 6							//'indicators'
        &pushregister 2
        &getMember
        &setRegister r:1
        &pop
        &pushregister 1
        &pushsdb 13							//'_x'
        &pushregister 1
        &pushsdbgm 4							//'relX'
        &pushregister 5
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 16							//'_y'
        &pushregister 1
        &pushsdbgm 5							//'relY'
        &pushregister 4
        &multiply
        &setMember
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label5        
       label6:
      &end // of function Resize

      &function2 OnBound () (r:1='this')
        &pushsdbgv 18							//'initialized'
        &not
        &jnz label7        
        &pushsdb 19							//'FSCommand:'
        &pushsdb 20							//'OnInitialized'
        &pushregister 1
        &pushbyte 2
        &pushsdb 21							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 22							//''
        &getURL2
       label7:
      &end // of function OnBound

      &function2 OnDestroying () (r:1='this')
        &pushsdbgv 6							//'indicators'
        &pushsdbgm 10							//'length'
        &setRegister r:3
        &pop
        &pushzero
        &setRegister r:2
        &pop
       label8:
        &pushregister 2
        &pushregister 3
        &lessThan
        &not
        &jnz label9        
        &pushzero
        &pushsdbgv 6							//'indicators'
        &pushregister 2
        &getMember
        &dcallmp 23							// OnDestroying()
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label8        
       label9:
        &pushsdbgv 18							//'initialized'
        &not
        &jnz label10        
        &pushsdb 19							//'FSCommand:'
        &pushsdb 24							//'OnClipDestroyed'
        &pushregister 1
        &pushbyte 2
        &pushsdb 21							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 22							//''
        &getURL2
       label10:
      &end // of function OnDestroying

      &function onUnload (      )      
        &pushsdb 25							//'AddIndicator'
        &delete2
        &pop
        &pushsdb 26							//'RemoveIndicator'
        &delete2
        &pop
        &pushsdb 27							//'MoveIndicator'
        &delete2
        &pop
        &pushsdb 28							//'OnBound'
        &delete2
        &pop
        &pushsdb 23							//'OnDestroying'
        &delete2
        &pop
        &pushsdb 29							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 18							//'initialized'
      &not
      &not
      &jnz label11      
      &pushsdb 6							//'indicators'
      &pushzero
      &pushsdb 30							//'Array'
      &new
      &setVariable
      &pushsdb 0							//'nextIndicatorId'
      &pushzerosv
      &pushsdb 18							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 19							//'FSCommand:'
      &pushsdb 20							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 21							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 22							//''
      &getURL2
     label11:
    &end // of frame 0
  &end // of defineMovieClip 47

  &defineMovieClip 48 // total frames: 1

    &frame 0
      &constants 'nextIndicatorId', 'StartPosIndicator', 'attachMovie', 'relX', 'relY', 'indicators', 'push', 'Pointer', 'encode', 'length', 'splice', 'removeMovieClip', '_x', 'sizer', '_width', '_y', '_height', 'initialized', 'FSCommand:', 'OnInitialized', 'qualifyName', '', 'OnDestroying', 'OnClipDestroyed', 'AddIndicator', 'RemoveIndicator', 'MoveIndicator', 'OnBound', 'onUnload', 'Array', 'this'  
      &function2 AddIndicator () (r:1='this')
        &pushsdbgv 0							//'nextIndicatorId'
        &setRegister r:3
        &pop
        &pushsdb 0							//'nextIndicatorId'
        &pushsdbgv 0							//'nextIndicatorId'
        &increment
        &setVariable
        &pushregister 3
        &pushregister 3
        &toString
        &pushsdb 1							//'StartPosIndicator'
        &pushbyte 3
        &pushregister 1
        &pushsdb 2							//'attachMovie'
        &callMethod
        &setRegister r:2
        &pop
        &pushregister 2
        &pushsdb 3							//'relX'
        &pushzero
        &setMember
        &pushregister 2
        &pushsdb 4							//'relY'
        &pushzero
        &setMember
        &pushregister 2
        &pushone
        &pushsdbgv 5							//'indicators'
        &dcallmp 6							// push()
        &pushregister 2
        &pushone
        &pushsdbgv 7							//'Pointer'
        &pushsdb 8							//'encode'
        &callMethod
        &return
      &end // of function AddIndicator

      &function2 RemoveIndicator (r:3='indicator') ()
        &pushsdbgv 5							//'indicators'
        &pushsdbgm 9							//'length'
        &setRegister r:2
        &pop
        &pushzero
        &setRegister r:1
        &pop
       label1:
        &pushregister 1
        &pushregister 2
        &lessThan
        &not
        &jnz label4        
        &pushregister 3
        &pushsdbgv 5							//'indicators'
        &pushregister 1
        &getMember
        &equals
        &not
        &jnz label3        
        &pushone
        &pushregister 1
        &pushbyte 2
        &pushsdbgv 5							//'indicators'
        &dcallmp 10							// splice()
        &pushsdbgv 5							//'indicators'
        &pushsdbgm 9							//'length'
        &pushzero
        &equals
        &not
        &jnz label2        
        &pushsdb 0							//'nextIndicatorId'
        &pushzerosv
       label2:
        &jmp label4        
       label3:
        &pushregister 1
        &increment
        &setRegister r:1
        &pop
        &jmp label1        
       label4:
        &pushzero
        &pushregister 3
        &dcallmp 11							// removeMovieClip()
      &end // of function RemoveIndicator

      &function2 MoveIndicator (r:1='indicator', r:3='newX', r:2='newY') ()
        &pushregister 1
        &pushsdb 3							//'relX'
        &pushregister 3
        &setMember
        &pushregister 1
        &pushsdb 4							//'relY'
        &pushregister 2
        &setMember
        &pushregister 1
        &pushsdb 12							//'_x'
        &pushsdbgv 13							//'sizer'
        &pushsdbgm 14							//'_width'
        &pushregister 3
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 15							//'_y'
        &pushsdbgv 13							//'sizer'
        &pushsdbgm 16							//'_height'
        &pushregister 2
        &multiply
        &setMember
      &end // of function MoveIndicator

      &function2 Resize (r:5='newWidth', r:4='newHeight') ()
        &pushsdbgv 13							//'sizer'
        &pushsdb 14							//'_width'
        &pushregister 5
        &setMember
        &pushsdbgv 13							//'sizer'
        &pushsdb 16							//'_height'
        &pushregister 4
        &setMember
        &pushsdbgv 5							//'indicators'
        &pushsdbgm 9							//'length'
        &setRegister r:3
        &pop
        &pushzero
        &setRegister r:2
        &pop
       label5:
        &pushregister 2
        &pushregister 3
        &lessThan
        &not
        &jnz label6        
        &pushsdbgv 5							//'indicators'
        &pushregister 2
        &getMember
        &setRegister r:1
        &pop
        &pushregister 1
        &pushsdb 12							//'_x'
        &pushregister 1
        &pushsdbgm 3							//'relX'
        &pushregister 5
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 15							//'_y'
        &pushregister 1
        &pushsdbgm 4							//'relY'
        &pushregister 4
        &multiply
        &setMember
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label5        
       label6:
      &end // of function Resize

      &function2 OnBound () (r:1='this')
        &pushsdbgv 17							//'initialized'
        &not
        &jnz label7        
        &pushsdb 18							//'FSCommand:'
        &pushsdb 19							//'OnInitialized'
        &pushregister 1
        &pushbyte 2
        &pushsdb 20							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 21							//''
        &getURL2
       label7:
      &end // of function OnBound

      &function2 OnDestroying () (r:1='this')
        &pushsdbgv 5							//'indicators'
        &pushsdbgm 9							//'length'
        &setRegister r:3
        &pop
        &pushzero
        &setRegister r:2
        &pop
       label8:
        &pushregister 2
        &pushregister 3
        &lessThan
        &not
        &jnz label9        
        &pushzero
        &pushsdbgv 5							//'indicators'
        &pushregister 2
        &getMember
        &dcallmp 22							// OnDestroying()
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label8        
       label9:
        &pushsdbgv 17							//'initialized'
        &not
        &jnz label10        
        &pushsdb 18							//'FSCommand:'
        &pushsdb 23							//'OnClipDestroyed'
        &pushregister 1
        &pushbyte 2
        &pushsdb 20							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 21							//''
        &getURL2
       label10:
      &end // of function OnDestroying

      &function onUnload (      )      
        &pushsdb 24							//'AddIndicator'
        &delete2
        &pop
        &pushsdb 25							//'RemoveIndicator'
        &delete2
        &pop
        &pushsdb 26							//'MoveIndicator'
        &delete2
        &pop
        &pushsdb 27							//'OnBound'
        &delete2
        &pop
        &pushsdb 22							//'OnDestroying'
        &delete2
        &pop
        &pushsdb 28							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 17							//'initialized'
      &not
      &not
      &jnz label11      
      &pushsdb 5							//'indicators'
      &pushzero
      &pushsdb 29							//'Array'
      &new
      &setVariable
      &pushsdb 0							//'nextIndicatorId'
      &pushzerosv
      &pushsdb 17							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 18							//'FSCommand:'
      &pushsdb 19							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 20							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 21							//''
      &getURL2
     label11:
    &end // of frame 0
  &end // of defineMovieClip 48

  &defineMovieClip 49 // total frames: 1

    &frame 0
      &constants 'nextIndicatorId', 'ObjectiveIndicator', 'attachMovie', 'category', 'isBonus', 'relX', 'relY', 'indicators', 'push', 'Pointer', 'encode', 'length', 'splice', 'removeMovieClip', '_x', 'sizer', '_width', '_y', '_height', 'initialized', 'FSCommand:', 'OnInitialized', 'qualifyName', '', 'OnDestroying', 'OnClipDestroyed', 'AddIndicator', 'RemoveIndicator', 'MoveIndicator', 'OnBound', 'onUnload', 'Array', 'this'  
      &function2 AddIndicator (r:5='category', r:4='isBonus') (r:1='this')
        &pushsdbgv 0							//'nextIndicatorId'
        &setRegister r:3
        &pop
        &pushsdb 0							//'nextIndicatorId'
        &pushsdbgv 0							//'nextIndicatorId'
        &increment
        &setVariable
        &pushregister 3
        &pushregister 3
        &toString
        &pushsdb 1							//'ObjectiveIndicator'
        &pushbyte 3
        &pushregister 1
        &pushsdb 2							//'attachMovie'
        &callMethod
        &setRegister r:2
        &pop
        &pushregister 2
        &pushsdb 3							//'category'
        &pushregister 5
        &setMember
        &pushregister 2
        &pushsdb 4							//'isBonus'
        &pushregister 4
        &pushzero
        &equals
        &not
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
        &pushsdbgv 7							//'indicators'
        &dcallmp 8							// push()
        &pushregister 2
        &pushone
        &pushsdbgv 9							//'Pointer'
        &pushsdb 10							//'encode'
        &callMethod
        &return
      &end // of function AddIndicator

      &function2 RemoveIndicator (r:3='indicator') ()
        &pushsdbgv 7							//'indicators'
        &pushsdbgm 11							//'length'
        &setRegister r:2
        &pop
        &pushzero
        &setRegister r:1
        &pop
       label1:
        &pushregister 1
        &pushregister 2
        &lessThan
        &not
        &jnz label4        
        &pushregister 3
        &pushsdbgv 7							//'indicators'
        &pushregister 1
        &getMember
        &equals
        &not
        &jnz label3        
        &pushone
        &pushregister 1
        &pushbyte 2
        &pushsdbgv 7							//'indicators'
        &dcallmp 12							// splice()
        &pushsdbgv 7							//'indicators'
        &pushsdbgm 11							//'length'
        &pushzero
        &equals
        &not
        &jnz label2        
        &pushsdb 0							//'nextIndicatorId'
        &pushzerosv
       label2:
        &jmp label4        
       label3:
        &pushregister 1
        &increment
        &setRegister r:1
        &pop
        &jmp label1        
       label4:
        &pushzero
        &pushregister 3
        &dcallmp 13							// removeMovieClip()
      &end // of function RemoveIndicator

      &function2 MoveIndicator (r:1='indicator', r:3='newX', r:2='newY') ()
        &pushregister 1
        &pushsdb 5							//'relX'
        &pushregister 3
        &setMember
        &pushregister 1
        &pushsdb 6							//'relY'
        &pushregister 2
        &setMember
        &pushregister 1
        &pushsdb 14							//'_x'
        &pushsdbgv 15							//'sizer'
        &pushsdbgm 16							//'_width'
        &pushregister 3
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 17							//'_y'
        &pushsdbgv 15							//'sizer'
        &pushsdbgm 18							//'_height'
        &pushregister 2
        &multiply
        &setMember
      &end // of function MoveIndicator

      &function2 Resize (r:5='newWidth', r:4='newHeight') ()
        &pushsdbgv 15							//'sizer'
        &pushsdb 16							//'_width'
        &pushregister 5
        &setMember
        &pushsdbgv 15							//'sizer'
        &pushsdb 18							//'_height'
        &pushregister 4
        &setMember
        &pushsdbgv 7							//'indicators'
        &pushsdbgm 11							//'length'
        &setRegister r:3
        &pop
        &pushzero
        &setRegister r:2
        &pop
       label5:
        &pushregister 2
        &pushregister 3
        &lessThan
        &not
        &jnz label6        
        &pushsdbgv 7							//'indicators'
        &pushregister 2
        &getMember
        &setRegister r:1
        &pop
        &pushregister 1
        &pushsdb 14							//'_x'
        &pushregister 1
        &pushsdbgm 5							//'relX'
        &pushregister 5
        &multiply
        &setMember
        &pushregister 1
        &pushsdb 17							//'_y'
        &pushregister 1
        &pushsdbgm 6							//'relY'
        &pushregister 4
        &multiply
        &setMember
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label5        
       label6:
      &end // of function Resize

      &function2 OnBound () (r:1='this')
        &pushsdbgv 19							//'initialized'
        &not
        &jnz label7        
        &pushsdb 20							//'FSCommand:'
        &pushsdb 21							//'OnInitialized'
        &pushregister 1
        &pushbyte 2
        &pushsdb 22							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 23							//''
        &getURL2
       label7:
      &end // of function OnBound

      &function2 OnDestroying () (r:1='this')
        &pushsdbgv 7							//'indicators'
        &pushsdbgm 11							//'length'
        &setRegister r:3
        &pop
        &pushzero
        &setRegister r:2
        &pop
       label8:
        &pushregister 2
        &pushregister 3
        &lessThan
        &not
        &jnz label9        
        &pushzero
        &pushsdbgv 7							//'indicators'
        &pushregister 2
        &getMember
        &dcallmp 24							// OnDestroying()
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label8        
       label9:
        &pushsdbgv 19							//'initialized'
        &not
        &jnz label10        
        &pushsdb 20							//'FSCommand:'
        &pushsdb 25							//'OnClipDestroyed'
        &pushregister 1
        &pushbyte 2
        &pushsdb 22							//'qualifyName'
        &callFunction
        &concat
        &pushsdb 23							//''
        &getURL2
       label10:
      &end // of function OnDestroying

      &function onUnload (      )      
        &pushsdb 26							//'AddIndicator'
        &delete2
        &pop
        &pushsdb 27							//'RemoveIndicator'
        &delete2
        &pop
        &pushsdb 28							//'MoveIndicator'
        &delete2
        &pop
        &pushsdb 29							//'OnBound'
        &delete2
        &pop
        &pushsdb 24							//'OnDestroying'
        &delete2
        &pop
        &pushsdb 30							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 19							//'initialized'
      &not
      &not
      &jnz label11      
      &pushsdb 7							//'indicators'
      &pushzero
      &pushsdb 31							//'Array'
      &new
      &setVariable
      &pushsdb 0							//'nextIndicatorId'
      &pushzerosv
      &pushsdb 19							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 20							//'FSCommand:'
      &pushsdb 21							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 22							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 23							//''
      &getURL2
     label11:
    &end // of frame 0
  &end // of defineMovieClip 49
&end
