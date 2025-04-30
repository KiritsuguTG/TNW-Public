movie 'C:\projects\Ra3\PRODUC~1\Data\APTBUI~1\034A3~1.0-D\pc\Output\igm_pauseMenu\\igm_pauseMenu.eaf' &compressed // flash 7, total frames: 1, frame rate: 30 fps, 1365x768 px

  &defineMovieClip 3 // total frames: 1
  &end // of defineMovieClip 3

  &defineMovieClip 5 // total frames: 1
  &end // of defineMovieClip 5

  &defineMovieClip 10 // total frames: 1
  &end // of defineMovieClip 10

  &defineMovieClip 13 // total frames: 1
  &end // of defineMovieClip 13

  &defineMovieClip 16 // total frames: 30

    &frame 9
      &stop
    &end // of frame 9

    &frame 19
      &stop
    &end // of frame 19

    &frame 29
      &stop
    &end // of frame 29
  &end // of defineMovieClip 16

  &defineMovieClip 17 // total frames: 1

    &placeMovieClip 5 &as 'spacerMC'
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 5
  &end // of defineMovieClip 17
  
  &exportAssets
    17 &as 'ObjectiveLine'
  &end // of exportAssets

  &frame 0
    &pushs 'screen'
    &pushthisgv
    &pushone
    &pushs 'igm_pauseMenu'
    &new
    &varEquals
    &stop
  &end // of frame 0
  
  &importAssets &from '../cafe/mouseComponents/std_MouseButton.swf'
    'std_MousebuttonSymbol' &as 26
  &end // of importAssets

  &placeMovieClip 26 &as 'resumeButton'
  
    &onClipEvent &construct
      &pushs 'm_focusDirs'
      &pushssv 'Left/Right'
      &pushs 'm_bEnabled'
      &pushtrue
      &setVariable
      &pushs 'm_refFM'
      &pushssv '_root.gFM'
      &pushs 'm_initiallySelected'
      &pushtrue
      &setVariable
      &pushs 'm_tabIndex'
      &pushbyte 4
      &setVariable
      &pushs 'm_bVisible'
      &pushtrue
      &setVariable
      &pushs 'm_label'
      &pushssv '$GUI:TacticalPauseDialogResumeButton'
      &pushs 'm_contentSymbol'
      &pushssv 'buttonContentSymbol'
    &end
  &end // of placeMovieClip 26

  &placeMovieClip 26 &as 'settingsButton'
  
    &onClipEvent &construct
      &pushs 'm_focusDirs'
      &pushssv 'Left/Right'
      &pushs 'm_bEnabled'
      &pushtrue
      &setVariable
      &pushs 'm_refFM'
      &pushssv '_root.gFM'
      &pushs 'm_initiallySelected'
      &pushfalse
      &setVariable
      &pushs 'm_tabIndex'
      &pushbyte 3
      &setVariable
      &pushs 'm_bVisible'
      &pushtrue
      &setVariable
      &pushs 'm_label'
      &pushssv '$GUI:TacticalPauseDialogOptionsButton'
      &pushs 'm_contentSymbol'
      &pushssv 'buttonContentSymbol'
    &end
  &end // of placeMovieClip 26

  &placeMovieClip 26 &as 'loadButton'
  
    &onClipEvent &construct
      &pushs 'm_focusDirs'
      &pushssv 'Left/Right'
      &pushs 'm_bEnabled'
      &pushtrue
      &setVariable
      &pushs 'm_refFM'
      &pushssv '_root.gFM'
      &pushs 'm_initiallySelected'
      &pushfalse
      &setVariable
      &pushs 'm_tabIndex'
      &pushbyte 2
      &setVariable
      &pushs 'm_bVisible'
      &pushtrue
      &setVariable
      &pushs 'm_label'
      &pushssv '$GUI:TacticalPauseDialogLoadButton'
      &pushs 'm_contentSymbol'
      &pushssv 'buttonContentSymbol'
    &end
  &end // of placeMovieClip 26

  &placeMovieClip 26 &as 'saveButton'
  
    &onClipEvent &construct
      &pushs 'm_focusDirs'
      &pushssv 'Left/Right'
      &pushs 'm_bEnabled'
      &pushtrue
      &setVariable
      &pushs 'm_refFM'
      &pushssv '_root.gFM'
      &pushs 'm_initiallySelected'
      &pushfalse
      &setVariable
      &pushs 'm_tabIndex'
      &pushone
      &setVariable
      &pushs 'm_bVisible'
      &pushtrue
      &setVariable
      &pushs 'm_label'
      &pushssv '$GUI:TacticalPauseDialogSaveButton'
      &pushs 'm_contentSymbol'
      &pushssv 'buttonContentSymbol'
    &end
  &end // of placeMovieClip 26

  &placeMovieClip 26 &as 'exitButton'
  
    &onClipEvent &construct
      &pushs 'm_focusDirs'
      &pushssv 'Left/Right'
      &pushs 'm_bEnabled'
      &pushtrue
      &setVariable
      &pushs 'm_refFM'
      &pushssv '_root.gFM'
      &pushs 'm_initiallySelected'
      &pushfalse
      &setVariable
      &pushs 'm_tabIndex'
      &pushzerosv
      &pushs 'm_bVisible'
      &pushtrue
      &setVariable
      &pushs 'm_label'
      &pushssv '$GUI:TacticalPauseDialogExitMissionButton'
      &pushs 'm_contentSymbol'
      &pushssv 'buttonContentSymbol'
    &end
  &end // of placeMovieClip 26
  
  &importAssets &from '../cafe/mouseComponents/std_mouseScrollbar.swf'
    'std_mouseScrollbarSymbol' &as 33
  &end // of importAssets

  &defineMovieClip 34 // total frames: 1
  &end // of defineMovieClip 34

  &defineMovieClip 35 // total frames: 1
  &end // of defineMovieClip 35

  &defineMovieClip 37 // total frames: 1

    &placeMovieClip 33 &as 'objectiveListScrollBarMC'
    
      &onClipEvent &construct
        &pushs 'm_nLength'
        &pushbyte 100
        &setVariable
        &pushs 'm_nMax'
        &pushbyte 19
        &setVariable
        &pushs 'm_nMin'
        &pushzerosv
        &pushs 'm_nValue'
        &pushzerosv
      &end
    &end // of placeMovieClip 33
  &end // of defineMovieClip 37

  &defineMovieClip 41 // total frames: 1
  &end // of defineMovieClip 41

  &defineMovieClip 44 // total frames: 1
  &end // of defineMovieClip 44

  &defineMovieClip 46 // total frames: 1
  &end // of defineMovieClip 46

  &defineMovieClip 54 // total frames: 30

    &frame 9
      &stop
    &end // of frame 9

    &frame 19
      &stop
    &end // of frame 19

    &frame 29
      &stop
    &end // of frame 29
  &end // of defineMovieClip 54

  &defineMovieClip 60 // total frames: 1
  &end // of defineMovieClip 60

  &defineButton 61
  
    &on     &overUpToOverDown
      &gotoLabel '_down'
      &play
    &end
  
    &on     &overDownToOverUp
      &gotoLabel '_over'
      &play
      &pushzero
      &pushs 'onClicked'
      &callfp
    &end
  
    &on     &idleToOverUp
      &gotoLabel '_over'
      &play
    &end
  
    &on     &overUpToIdle
      &gotoLabel '_up'
      &play
    &end
  &end // of defineButton 61

  &defineMovieClip 68 // total frames: 40

    &frame 9
      &stop
    &end // of frame 9

    &frame 19
      &stop
    &end // of frame 19

    &frame 29
      &stop
    &end // of frame 29

    &frame 39
      &stop
    &end // of frame 39
  &end // of defineMovieClip 68

  &defineMovieClip 69 // total frames: 1
  &end // of defineMovieClip 69

  &defineMovieClip 70 // total frames: 1
  &end // of defineMovieClip 70

  &defineMovieClip 71 // total frames: 1
  &end // of defineMovieClip 71

  &defineMovieClip 81 // total frames: 0
  &end // of defineMovieClip 81
  
  &exportAssets
    81 &as '__Packages.Cafe2_BaseUIScreen'
  &end // of exportAssets
  
  &initMovieClip 81
    &constants '_global', 'Cafe2_BaseUIScreen', 'm_screen', 'onEnterFrame', 'frameDelayedInitCallback', 'bind0', 'prototype', 'frameDelayedInit', '\n\nCafe2_BaseUIScreen::frameDelayedInitCallback() :', '\nscreens and move the call to initGUI() to frameDelayedInit().\n', 'N.B. You *must* override frameDelayedInit() in your', 'Array', 'outtroComplete', 'Cafe2_BaseUIScreen::outtroComplete() ', 'm_thisClass', 'm_uiComponentArray', 'length', 'splice', 'm_changeToScreen', 'gSM', 'changeMainScreen', 'introComplete', 'Cafe2_BaseUIScreen::introComplete()', 'restoreVisualState', 'm_introCount', 'onIntrosComplete', 'Cafe2_BaseUIScreen::onIntrosComplete()', 'localEventHandler', 'gEH', 'setLocalEventHandler', 'enableCurrentLocalEventHandler', 'registerIntroOuttroComponents', 'Cafe2_BaseUIScreen::registerIntroOuttroComponents()', 'setIntroCallback', 'executeBackFunction', 'Cafe2_BaseUIScreen::executeBackFunction', 'goBackScreen', 'startIntro', 'Cafe2_BaseUIScreen::startIntro()', 'intro', 'startOuttro', 'Cafe2_BaseUIScreen::startOuttro', 'outtro', 'startOuttroAndCallBack', 'm_executeOuttroCallBack', 'outtroAndCallBackComplete', 'backButtonClicked', 'Cafe2_BaseUIScreen::backButtonClicked()', 'Cafe2_BaseUIScreen::localEventHandler() keyCode == ', 'gFM', 'handleDefaultInputs', 'clearData', 'obj', 'func', 'call', 'ASSetPropFlags'  
    &pushglobalgv
    &pushsdbgm 1							//'Cafe2_BaseUIScreen'
    &not
    &not
    &jnz label30    
    &pushglobalgv
    &pushsdb 1							//'Cafe2_BaseUIScreen'
    &function2  (r:3='screen') (r:1='this', r:2='_global')
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdb 2							//'m_screen'
      &pushregister 3
      &setMember
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 2							//'m_screen'
      &pushsdb 3							//'onEnterFrame'
      &pushregister 1
      &pushsdbgm 4							//'frameDelayedInitCallback'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 5							//'bind0'
      &callMethod
      &setMember
    &end // of function 

    &setRegister r:0
    &setMember
    &pushregister 0
    &pushsdbgm 6							//'prototype'
    &setRegister r:1
    &pop
    &pushregister 1
    &pushsdb 7							//'frameDelayedInit'
    &function2  () ()
      &pushsdb 8							//'\n\nCafe2_BaseUIScreen::frameDelayedInitCallback() :'
      &trace
      &pushsdb 9							//'\nscreens and move the call to initGUI() to frameDelayedInit().\n'
      &pushsdb 10							//'N.B. You *must* override frameDelayedInit() in your'
      &pushbyte 2
      &pushsdb 11							//'Array'
      &new
      &setRegister r:1
      &pop
      &pushregister 1
      &pushzero
      &getMember
      &pushregister 1
      &pushone
      &getMember
      &add
      &trace
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 4							//'frameDelayedInitCallback'
    &function2  () (r:1='this')
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 2							//'m_screen'
      &pushsdb 3							//'onEnterFrame'
      &pushnull
      &setMember
      &pushzero
      &pushregister 1
      &dcallmp 7							// frameDelayedInit()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 12							//'outtroComplete'
    &function2  (r:3='theComponent') (r:1='_global')
      &pushsdb 13							//'Cafe2_BaseUIScreen::outtroComplete() '
      &pushregister 3
      &add
      &trace
      &pushzero
      &setRegister r:2
      &pop
     label1:
      &pushregister 2
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &lessThan
      &not
      &jnz label3      
      &pushregister 3
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushregister 2
      &getMember
      &equals
      &not
      &jnz label2      
      &jmp label3      
     label2:
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label1      
     label3:
      &pushone
      &pushregister 2
      &pushbyte 2
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &dcallmp 17							// splice()
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &pushzero
      &greaterThan
      &not
      &not
      &jnz label4      
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 18							//'m_changeToScreen'
      &pushnull
      &equals
      &not
      &not
      &jnz label4      
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 18							//'m_changeToScreen'
      &pushone
      &pushregister 1
      &pushsdbgm 19							//'gSM'
      &dcallmp 20							// changeMainScreen()
     label4:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 21							//'introComplete'
    &function2  (r:1='theComponent') ()
      &pushsdb 22							//'Cafe2_BaseUIScreen::introComplete()'
      &trace
      &pushzero
      &pushregister 1
      &dcallmp 23							// restoreVisualState()
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdb 24							//'m_introCount'
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 24							//'m_introCount'
      &decrement
      &setMember
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 24							//'m_introCount'
      &pushzero
      &greaterThan
      &not
      &not
      &jnz label5      
      &pushzero
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &dcallmp 25							// onIntrosComplete()
     label5:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 25							//'onIntrosComplete'
    &function2  () (r:1='this', r:2='_global')
      &pushsdb 26							//'Cafe2_BaseUIScreen::onIntrosComplete()'
      &trace
      &pushregister 1
      &pushsdbgm 27							//'localEventHandler'
      &pushone
      &pushregister 2
      &pushsdbgm 28							//'gEH'
      &dcallmp 29							// setLocalEventHandler()
      &pushzero
      &pushregister 2
      &pushsdbgm 28							//'gEH'
      &dcallmp 30							// enableCurrentLocalEventHandler()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 31							//'registerIntroOuttroComponents'
    &function2  (r:3='components') (r:1='this')
      &pushsdb 32							//'Cafe2_BaseUIScreen::registerIntroOuttroComponents()'
      &trace
      &pushregister 1
      &pushsdb 15							//'m_uiComponentArray'
      &pushregister 3
      &setMember
      &pushregister 1
      &pushsdb 24							//'m_introCount'
      &pushregister 1
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &setMember
      &pushzero
      &setRegister r:2
      &pop
     label6:
      &pushregister 2
      &pushregister 1
      &pushsdbgm 24							//'m_introCount'
      &lessThan
      &not
      &jnz label7      
      &pushregister 1
      &pushsdbgm 21							//'introComplete'
      &pushone
      &pushregister 1
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushregister 2
      &getMember
      &dcallmp 33							// setIntroCallback()
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label6      
     label7:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 34							//'executeBackFunction'
    &function2  (r:3='theComponent') (r:1='_global')
      &pushsdb 35							//'Cafe2_BaseUIScreen::executeBackFunction'
      &pushregister 3
      &add
      &trace
      &pushzero
      &setRegister r:2
      &pop
     label8:
      &pushregister 2
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &lessThan
      &not
      &jnz label10      
      &pushregister 3
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushregister 2
      &getMember
      &equals
      &not
      &jnz label9      
      &jmp label10      
     label9:
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label8      
     label10:
      &pushone
      &pushregister 2
      &pushbyte 2
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &dcallmp 17							// splice()
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &pushzero
      &greaterThan
      &not
      &not
      &jnz label11      
      &pushzero
      &pushregister 1
      &pushsdbgm 19							//'gSM'
      &dcallmp 36							// goBackScreen()
     label11:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 37							//'startIntro'
    &function2  () (r:1='this')
      &pushsdb 38							//'Cafe2_BaseUIScreen::startIntro()'
      &trace
      &pushregister 1
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &setRegister r:3
      &pop
      &pushzero
      &setRegister r:2
      &pop
     label12:
      &pushregister 2
      &pushregister 3
      &lessThan
      &not
      &jnz label13      
      &pushzero
      &pushregister 1
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushregister 2
      &getMember
      &dcallmp 39							// intro()
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label12      
     label13:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 40							//'startOuttro'
    &function2  (r:4='newScreen') (r:1='this')
      &pushsdb 41							//'Cafe2_BaseUIScreen::startOuttro'
      &trace
      &pushregister 1
      &pushsdb 18							//'m_changeToScreen'
      &pushregister 4
      &setMember
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &setRegister r:3
      &pop
      &pushregister 3
      &pushzero
      &greaterThan
      &not
      &jnz label16      
      &pushzero
      &setRegister r:2
      &pop
     label14:
      &pushregister 2
      &pushregister 3
      &lessThan
      &not
      &jnz label15      
      &pushregister 1
      &pushsdbgm 12							//'outtroComplete'
      &pushone
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushregister 2
      &getMember
      &dcallmp 42							// outtro()
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label14      
     label15:
      &jmp label17      
     label16:
      &pushnull
      &pushone
      &pushregister 1
      &dcallmp 12							// outtroComplete()
     label17:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 43							//'startOuttroAndCallBack'
    &function2  (r:4='doAfterOuttroComplete') (r:1='this')
      &pushsdb 41							//'Cafe2_BaseUIScreen::startOuttro'
      &trace
      &pushregister 1
      &pushsdb 44							//'m_executeOuttroCallBack'
      &pushregister 4
      &setMember
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &setRegister r:3
      &pop
      &pushregister 3
      &pushzero
      &greaterThan
      &not
      &jnz label20      
      &pushzero
      &setRegister r:2
      &pop
     label18:
      &pushregister 2
      &pushregister 3
      &lessThan
      &not
      &jnz label19      
      &pushregister 1
      &pushsdbgm 45							//'outtroAndCallBackComplete'
      &pushone
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushregister 2
      &getMember
      &dcallmp 42							// outtro()
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label18      
     label19:
      &jmp label21      
     label20:
      &pushnull
      &pushone
      &pushregister 1
      &dcallmp 45							// outtroAndCallBackComplete()
     label21:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 45							//'outtroAndCallBackComplete'
    &function2  (r:2='theComponent') ()
      &pushsdb 13							//'Cafe2_BaseUIScreen::outtroComplete() '
      &pushregister 2
      &add
      &trace
      &pushzero
      &setRegister r:1
      &pop
     label22:
      &pushregister 1
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &lessThan
      &not
      &jnz label24      
      &pushregister 2
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushregister 1
      &getMember
      &equals
      &not
      &jnz label23      
      &jmp label24      
     label23:
      &pushregister 1
      &increment
      &setRegister r:1
      &pop
      &jmp label22      
     label24:
      &pushone
      &pushregister 1
      &pushbyte 2
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &dcallmp 17							// splice()
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &pushzero
      &greaterThan
      &not
      &not
      &jnz label25      
      &pushzero
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &dcallmp 44							// m_executeOuttroCallBack()
     label25:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 46							//'backButtonClicked'
    &function2  () (r:1='_global')
      &pushsdb 47							//'Cafe2_BaseUIScreen::backButtonClicked()'
      &trace
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushsdbgm 16							//'length'
      &setRegister r:3
      &pop
      &pushregister 3
      &pushzero
      &greaterThan
      &not
      &jnz label28      
      &pushzero
      &setRegister r:2
      &pop
     label26:
      &pushregister 2
      &pushregister 3
      &lessThan
      &not
      &jnz label27      
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 34							//'executeBackFunction'
      &pushone
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdbgm 14							//'m_thisClass'
      &pushsdbgm 15							//'m_uiComponentArray'
      &pushregister 2
      &getMember
      &dcallmp 42							// outtro()
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label26      
     label27:
      &jmp label29      
     label28:
      &pushzero
      &pushregister 1
      &pushsdbgm 19							//'gSM'
      &dcallmp 36							// goBackScreen()
     label29:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 27							//'localEventHandler'
    &function2  (r:2='keyCode', 'controller') (r:1='_global')
      &pushsdb 48							//'Cafe2_BaseUIScreen::localEventHandler() keyCode == '
      &pushregister 2
      &add
      &trace
      &pushregister 2
      &pushone
      &pushregister 1
      &pushsdbgm 49							//'gFM'
      &dcallmp 50							// handleDefaultInputs()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 51							//'clearData'
    &function2  () (r:1='this')
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdb 2							//'m_screen'
      &pushnull
      &setMember
      &pushsdbgv 1							//'Cafe2_BaseUIScreen'
      &pushsdb 14							//'m_thisClass'
      &pushnull
      &setMember
      &pushregister 1
      &pushsdb 18							//'m_changeToScreen'
      &pushnull
      &setMember
      &pushregister 1
      &pushsdb 15							//'m_uiComponentArray'
      &pushnull
      &setMember
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 5							//'bind0'
    &function  ('obj', 'func'    )    
      &function  (      )      
        &pushsdbgv 52							//'obj'
        &pushone
        &pushsdbgv 53							//'func'
        &dcallmp 54							// call()
      &end // of function 

      &return
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 18							//'m_changeToScreen'
    &pushnull
    &setMember
    &pushregister 1
    &pushsdb 44							//'m_executeOuttroCallBack'
    &pushnull
    &setMember
    &pushregister 1
    &pushsdb 15							//'m_uiComponentArray'
    &pushzero
    &pushsdb 11							//'Array'
    &new
    &setMember
    &pushone
    &pushnull
    &pushglobalgv
    &pushsdbgm 1							//'Cafe2_BaseUIScreen'
    &pushsdbgm 6							//'prototype'
    &pushbyte 3
    &pushsdb 55							//'ASSetPropFlags'
    &callFunction
   label30:
    &pop
  &end // of initMovieClip 81

  &defineMovieClip 82 // total frames: 0
  &end // of defineMovieClip 82
  
  &exportAssets
    82 &as '__Packages.IScrollbarEventListener'
  &end // of exportAssets
  
  &initMovieClip 82
    &constants '_global', 'IScrollbarEventListener'  
    &pushglobalgv
    &pushsdbgm 1							//'IScrollbarEventListener'
    &not
    &not
    &jnz label1    
    &pushglobalgv
    &pushsdb 1							//'IScrollbarEventListener'
    &function  (    )    
    &end // of function 

    &setMember
   label1:
    &pop
  &end // of initMovieClip 82

  &defineMovieClip 83 // total frames: 0
  &end // of defineMovieClip 83
  
  &exportAssets
    83 &as '__Packages.igm_pauseMenu'
  &end // of exportAssets
  
  &initMovieClip 83
    &constants '_global', 'igm_pauseMenu', 'igm_pauseMenu::igm_pauseMenu() screen = ', 'Cafe2_BaseUIScreen', 'm_screen', 'm_thisClass', 'm_objectiveListVisibleHeight', 'campaignMC', 'objectiveListMC', 'maskMC', '_height', 'initGUI', 'prototype', 'IScrollbarEventListener', 'OnScrollbarDelta', 'igm_pauseMenu::OnScrollbarDelta( ', ' )', 'OnScrollbarThumbUpdate', 'igm_pauseMenu::OnScrollbarThumbUpdate( ', 'm_campaignMC', 'linesMC', 'scrollObjectiveListBox', 'OnScrollbarMouseEnter', 'igm_pauseMenu::OnScrollbarMouseEnter()', 'OnScrollbarMouseExit', 'igm_pauseMenu::OnScrollbarMouseExit()', 'initMode', 'Object', 'QueryGameEngine?PauseMenu_mode', 'igm_pauseMenu: data.PauseMenu_mode = "', 'PauseMenu_mode', '"', 'm_mode', 'initButton', '_visible', 'enable', 'disable', 'setOnMouseUpFunction', 'initButtons', 'QueryGameEngine?igm_pauseMenu_enableSave', 'igm_pauseMenu_enableSave', '0', 'QueryGameEngine?igm_pauseMenu_enableLoad', 'igm_pauseMenu_enableLoad', 'onExitButtonClicked', 'bind0', 'exitButton', 'onSettingsButtonClicked', 'settingsButton', 'onLoadButtonClicked', 'loadButton', 'onSaveButtonClicked', 'saveButton', 'backButtonClicked', 'resumeButton', 'getObjectiveLineColor', 'clearObjectiveListBox', 'igm_pauseMenu::clearObjectiveListBox()', 'm_objectiveLines', 'length', 'pop', 'hitRegionMC', 'bttn', 'onRelease', 'removeMovieClip', 'm_selectedObjectiveLineIndex', 'objectiveDescTF', 'text', '', 'colorizeMovieClip', 'Color', 'setRGB', 'populateObjectiveListBox', 'igm_pauseMenu::populateObjectiveListBox()', 'QueryGameEngine?PauseMenu_missionObjectiveId&PauseMenu_missionObjectiveStatus&PauseMenu_missionObjectiveBonusness', 'igm_pauseMenu: PauseMenu_missionObjectiveId = "', 'PauseMenu_missionObjectiveId', 'igm_pauseMenu: PauseMenu_missionObjectiveStatus = "', 'PauseMenu_missionObjectiveStatus', 'igm_pauseMenu: PauseMenu_missionObjectiveBonusness = "', 'PauseMenu_missionObjectiveBonusness', ',', 'split', 'ObjectiveLine', 'attachMovie', 'objectiveId', 'textTF', '$PauseMenu_objectiveTitle', '&outline', 'autoSize', 'left', 'spacerMC', 'selectionMC', '_y', 'textColor', 'checkboxMC', 'gotoAndPlay', 'frameMC', 'checkMC', 'onObjectiveLineClicked', 'bind1', 'push', 'objectiveListScrollBarMC', 'selectObjectiveListBoxEntry', 'igm_pauseMenu::scrollObjectiveListBox( ', 'visibleHeight', 'setInfo', 'ensureObjectiveLineVisibility', 'igm_pauseMenu::ensureObjectiveLineVisibility( ', 'refreshPlayerStatus', 'MAX_PLAYERS', 'MovieClip', 'm_playerLineMCs', 'statusMC', 'statusTF', '$PauseMenu_playerStatus', 'igm_pauseMenu::selectObjectiveListBoxEntry()', 'QueryGameEngine?PauseMenu_selectedMissionObjectiveId', 'igm_pauseMenu: PauseMenu_selectedMissionObjectiveId = "', 'PauseMenu_selectedMissionObjectiveId', '$PauseMenu_objectiveDesc', 'submitMissionMap', 'igm_pauseMenu::submitMissionMap()', 'FSCommand:CallGameFunction', '%PauseMenu_receiveMissionMap?missionMap=', 'missionMap', 'Pointer', 'encode', 'OnBound', 'refreshPlayerMuted', 'igm_pauseMenu::refreshPlayerMuted()', 'QueryGameEngine?PauseMenu_playerMuted', 'igm_pauseMenu: PauseMenu_playerMuted = "', 'PauseMenu_playerMuted', 'm_playerCount', 'muteButtonMC', 'muteMC', 'initPlayerList', 'igm_pauseMenu::initPlayerList()', 'Array', 'm_skirmishMC', 'playerListMC', 'nameMC', 'nameTF', '$PauseMenu_playerName', 'onClicked', 'onPlayerMuteButtonClicked', 'QueryGameEngine?PauseMenu_playerFaction&PauseMenu_playerColor&PauseMenu_playerIsNonLocalHuman&PauseMenu_playerMuted', 'igm_pauseMenu: PauseMenu_playerFaction = "', 'PauseMenu_playerFaction', 'igm_pauseMenu: PauseMenu_playerColor = "', 'PauseMenu_playerColor', 'igm_pauseMenu: PauseMenu_playerIsNonLocalHuman = "', 'PauseMenu_playerIsNonLocalHuman', 'Math', 'min', 'factionMC', 'colorMC', '_disabled', '_up', 'igm_pauseMenu::initGUI()', '../../common/ig_missionMap.swf', 'loadMovie', 'skirmishMC', 'Campaign', 'Skirmish', 'addListener', 'setSize', 'igm_pauseMenu: unrecognized mode "', 'm_localMessageHandlerFunc', 'localMessageHandler', 'bind1DynamicParams', 'gMH', 'addMessageHandler', 'm_localEventHandlerIndex', 'localEventHandler', 'bind2DynamicParams', 'gEH', 'addLocalEventHandler', 'registerIntroOuttroComponents', 'startIntro', 'onScreenExit', 'gSM', 'setOnExitScreen', 'igm_pauseMenu::onScreenExit()', 'OnDestroying', 'removeLocalEventHandler', 'removeMessageHandler', 'clearData', 'igm_pauseMenu::localMessageHandler() messageCode = \'', '\'', 'MSGCODE', 'IGM_CLOSE_PAUSE_MENU', 'IG_PAUSE_MENU_REFRESH_OBJECTIVES', 'IG_PAUSE_MENU_SUBMIT_MISSION_MAP', 'IG_PAUSE_MENU_SELECT_OBJECTIVE', 'IG_PAUSE_MENU_REFRESH_PLAYER_MUTED', 'IG_PAUSE_MENU_REFRESH_PLAYER_STATUS', 'igm_pauseMenu::localEventHandler() keyCode == ', 'INPUTCODE', 'ESCAPE', 'gFM', 'handleDefaultInputs', 'igm_pauseMenu::onExitButtonClicked()', 'igm_pauseMenu::onSettingsButtonClicked()', 'SCREEN', 'FEG_OPTIONS', 'startOuttro', 'igm_pauseMenu::onLoadButtonClicked()', 'GAME', 'SAVELOADSCREEN_TYPE', 'ENUM', 'SAVELOADSCREEN_LOAD', 'FEG_SAVELOAD', 'igm_pauseMenu::onSaveButtonClicked()', 'SAVELOADSCREEN_SAVE', 'igm_pauseMenu::onObjectiveLineClicked( ', '%PauseMenu_onMissionObjectiveClicked?objectiveId=', 'igm_pauseMenu::onPlayerMuteButtonClicked( ', '%PauseMenu_onPlayerMuteClicked?playerNum=', 'ASSetPropFlags'  
    &pushglobalgv
    &pushsdbgm 1							//'igm_pauseMenu'
    &not
    &not
    &jnz label50    
    &pushglobalgv
    &pushsdb 1							//'igm_pauseMenu'
    &function2  (r:3='screen') (r:1='this', r:2='super')
      &pushzero
      &pushregister 2
      &pushundef
      &callmp
      &pushsdb 2							//'igm_pauseMenu::igm_pauseMenu() screen = '
      &pushregister 3
      &add
      &trace
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdb 4							//'m_screen'
      &pushregister 3
      &setMember
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdb 5							//'m_thisClass'
      &pushregister 1
      &setMember
      &pushregister 1
      &pushsdb 6							//'m_objectiveListVisibleHeight'
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 7							//'campaignMC'
      &pushsdbgm 8							//'objectiveListMC'
      &pushsdbgm 9							//'maskMC'
      &pushsdbgm 10							//'_height'
      &setMember
      &pushzero
      &pushregister 1
      &dcallmp 11							// initGUI()
    &end // of function 

    &setRegister r:0
    &setMember
    &pushglobalgv
    &pushsdbgm 1							//'igm_pauseMenu'
    &pushsdbgv 3							//'Cafe2_BaseUIScreen'
    &extends
    &pushregister 0
    &pushsdbgm 12							//'prototype'
    &setRegister r:1
    &pop
    &pushglobalgv
    &pushsdbgm 13							//'IScrollbarEventListener'
    &pushone
    &pushglobalgv
    &pushsdbgm 1							//'igm_pauseMenu'
    &implements
    &pushregister 1
    &pushsdb 14							//'OnScrollbarDelta'
    &function2  (r:1='dir') ()
      &pushsdb 15							//'igm_pauseMenu::OnScrollbarDelta( '
      &pushregister 1
      &toString
      &add
      &pushsdb 16							//' )'
      &add
      &trace
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 17							//'OnScrollbarThumbUpdate'
    &function2  (r:3='percentage') (r:1='this')
      &pushsdb 18							//'igm_pauseMenu::OnScrollbarThumbUpdate( '
      &pushregister 3
      &toString
      &add
      &pushsdb 16							//' )'
      &add
      &trace
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 8							//'objectiveListMC'
      &pushsdbgm 20							//'linesMC'
      &pushsdbgm 10							//'_height'
      &setRegister r:2
      &pop
      &pushregister 2
      &pushregister 1
      &pushsdbgm 6							//'m_objectiveListVisibleHeight'
      &greaterThan
      &not
      &jnz label1      
      &pushregister 3
      &pushfloat 0.009999999776483
      &multiply
      &pushregister 2
      &pushregister 1
      &pushsdbgm 6							//'m_objectiveListVisibleHeight'
      &subtract
      &multiply
      &pushone
      &pushregister 1
      &dcallmp 21							// scrollObjectiveListBox()
     label1:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 22							//'OnScrollbarMouseEnter'
    &function  (    )    
      &pushsdb 23							//'igm_pauseMenu::OnScrollbarMouseEnter()'
      &trace
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 24							//'OnScrollbarMouseExit'
    &function  (    )    
      &pushsdb 25							//'igm_pauseMenu::OnScrollbarMouseExit()'
      &trace
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 26							//'initMode'
    &function2  () (r:1='this')
      &pushzero
      &pushsdb 27							//'Object'
      &new
      &setRegister r:2
      &pop
      &pushsdb 28							//'QueryGameEngine?PauseMenu_mode'
      &pushregister 2
      &loadVariables
      &pushsdb 29							//'igm_pauseMenu: data.PauseMenu_mode = "'
      &pushregister 2
      &pushsdbgm 30							//'PauseMenu_mode'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushregister 1
      &pushsdb 32							//'m_mode'
      &pushregister 2
      &pushsdbgm 30							//'PauseMenu_mode'
      &setMember
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 33							//'initButton'
    &function2  (r:1='bttn', r:3='enable', r:2='onClickFn') ()
      &pushregister 1
      &pushsdb 34							//'_visible'
      &pushtrue
      &setMember
      &pushregister 3
      &not
      &jnz label2      
      &pushzero
      &pushregister 1
      &dcallmp 35							// enable()
      &jmp label3      
     label2:
      &pushzero
      &pushregister 1
      &dcallmp 36							// disable()
     label3:
      &pushregister 2
      &pushone
      &pushregister 1
      &dcallmp 37							// setOnMouseUpFunction()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 38							//'initButtons'
    &function2  () (r:1='this', r:2='_global')
      &pushzero
      &pushsdb 27							//'Object'
      &new
      &setRegister r:3
      &pop
      &pushsdb 39							//'QueryGameEngine?igm_pauseMenu_enableSave'
      &pushregister 3
      &loadVariables
      &pushregister 3
      &pushsdbgm 40							//'igm_pauseMenu_enableSave'
      &pushsdb 41							//'0'
      &equals
      &not
      &setRegister r:5
      &pop
      &pushsdb 42							//'QueryGameEngine?igm_pauseMenu_enableLoad'
      &pushregister 3
      &loadVariables
      &pushregister 3
      &pushsdbgm 43							//'igm_pauseMenu_enableLoad'
      &pushsdb 41							//'0'
      &equals
      &not
      &setRegister r:4
      &pop
      &pushregister 1
      &pushsdbgm 44							//'onExitButtonClicked'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 45							//'bind0'
      &callMethod
      &pushtrue
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 46							//'exitButton'
      &pushbyte 3
      &pushregister 1
      &dcallmp 33							// initButton()
      &pushregister 1
      &pushsdbgm 47							//'onSettingsButtonClicked'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 45							//'bind0'
      &callMethod
      &pushtrue
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 48							//'settingsButton'
      &pushbyte 3
      &pushregister 1
      &dcallmp 33							// initButton()
      &pushregister 1
      &pushsdbgm 49							//'onLoadButtonClicked'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 45							//'bind0'
      &callMethod
      &pushregister 4
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 50							//'loadButton'
      &pushbyte 3
      &pushregister 1
      &dcallmp 33							// initButton()
      &pushregister 1
      &pushsdbgm 51							//'onSaveButtonClicked'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 45							//'bind0'
      &callMethod
      &pushregister 5
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 52							//'saveButton'
      &pushbyte 3
      &pushregister 1
      &dcallmp 33							// initButton()
      &pushregister 1
      &pushsdbgm 53							//'backButtonClicked'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 45							//'bind0'
      &callMethod
      &pushtrue
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 54							//'resumeButton'
      &pushbyte 3
      &pushregister 1
      &dcallmp 33							// initButton()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 55							//'getObjectiveLineColor'
    &function2  (r:1='isBonus') ()
      &pushregister 1
      &jnz label4      
      &pushlong 65280
      &jmp label5      
     label4:
      &pushlong 16763904
     label5:
      &return
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 56							//'clearObjectiveListBox'
    &function2  () (r:1='this')
      &pushsdb 57							//'igm_pauseMenu::clearObjectiveListBox()'
      &trace
     label6:
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushsdbgm 59							//'length'
      &pushzero
      &greaterThan
      &not
      &jnz label7      
      &pushzero
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushsdb 60							//'pop'
      &callMethod
      &setRegister r:2
      &pop
      &pushregister 2
      &pushsdbgm 61							//'hitRegionMC'
      &pushsdbgm 62							//'bttn'
      &pushsdb 63							//'onRelease'
      &delete
      &pop
      &pushzero
      &pushregister 2
      &dcallmp 64							// removeMovieClip()
      &jmp label6      
     label7:
      &pushregister 1
      &pushsdb 65							//'m_selectedObjectiveLineIndex'
      &pushbyte -1
      &setMember
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 66							//'objectiveDescTF'
      &pushsdb 67							//'text'
      &pushsdb 68							//''
      &setMember
    &end // of function 

    &setMember
    &pushregister 0
    &pushsdb 69							//'colorizeMovieClip'
    &function2  (r:2='clip', r:3='clr') ()
      &pushregister 2
      &pushone
      &pushsdb 70							//'Color'
      &new
      &setRegister r:1
      &pop
      &pushregister 3
      &pushone
      &pushregister 1
      &dcallmp 71							// setRGB()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 72							//'populateObjectiveListBox'
    &function2  () (r:1='this', r:2='_global')
      &pushsdb 73							//'igm_pauseMenu::populateObjectiveListBox()'
      &trace
      &pushzero
      &pushregister 1
      &dcallmp 56							// clearObjectiveListBox()
      &pushzero
      &pushsdb 27							//'Object'
      &new
      &setRegister r:13
      &pop
      &pushsdb 74							//'QueryGameEngine?PauseMenu_missionObjectiveId&PauseMenu_missionObjectiveStatus&PauseMenu_missionObjectiveBonusness'
      &pushregister 13
      &loadVariables
      &pushsdb 75							//'igm_pauseMenu: PauseMenu_missionObjectiveId = "'
      &pushregister 13
      &pushsdbgm 76							//'PauseMenu_missionObjectiveId'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushsdb 77							//'igm_pauseMenu: PauseMenu_missionObjectiveStatus = "'
      &pushregister 13
      &pushsdbgm 78							//'PauseMenu_missionObjectiveStatus'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushsdb 79							//'igm_pauseMenu: PauseMenu_missionObjectiveBonusness = "'
      &pushregister 13
      &pushsdbgm 80							//'PauseMenu_missionObjectiveBonusness'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushsdb 81							//','
      &pushone
      &pushregister 13
      &pushsdbgm 76							//'PauseMenu_missionObjectiveId'
      &pushsdb 82							//'split'
      &callMethod
      &setRegister r:14
      &pop
      &pushsdb 81							//','
      &pushone
      &pushregister 13
      &pushsdbgm 78							//'PauseMenu_missionObjectiveStatus'
      &pushsdb 82							//'split'
      &callMethod
      &setRegister r:16
      &pop
      &pushsdb 81							//','
      &pushone
      &pushregister 13
      &pushsdbgm 80							//'PauseMenu_missionObjectiveBonusness'
      &pushsdb 82							//'split'
      &callMethod
      &setRegister r:15
      &pop
      &pushzero
      &setRegister r:12
      &pop
      &pushregister 14
      &pushsdbgm 59							//'length'
      &setRegister r:17
      &pop
      &pushzero
      &setRegister r:4
      &pop
     label8:
      &pushregister 4
      &pushregister 17
      &lessThan
      &not
      &jnz label11      
      &pushregister 14
      &pushregister 4
      &getMember
      &toNumber
      &setRegister r:9
      &pop
      &pushregister 16
      &pushregister 4
      &getMember
      &setRegister r:10
      &pop
      &pushregister 15
      &pushregister 4
      &getMember
      &toNumber
      &pushzero
      &equals
      &not
      &setRegister r:11
      &pop
      &pushregister 4
      &pushregister 4
      &toString
      &pushsdb 83							//'ObjectiveLine'
      &pushbyte 3
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 8							//'objectiveListMC'
      &pushsdbgm 20							//'linesMC'
      &pushsdb 84							//'attachMovie'
      &callMethod
      &setRegister r:3
      &pop
      &pushregister 3
      &pushsdb 85							//'objectiveId'
      &pushregister 9
      &setMember
      &pushregister 3
      &pushsdbgm 86							//'textTF'
      &pushsdbgm 10							//'_height'
      &setRegister r:5
      &pop
      &pushregister 3
      &pushsdbgm 86							//'textTF'
      &pushsdb 67							//'text'
      &pushsdb 87							//'$PauseMenu_objectiveTitle'
      &pushregister 9
      &add
      &pushsdb 88							//'&outline'
      &add
      &setMember
      &pushregister 3
      &pushsdbgm 86							//'textTF'
      &pushsdb 89							//'autoSize'
      &pushsdb 90							//'left'
      &setMember
      &pushregister 3
      &pushsdbgm 86							//'textTF'
      &pushsdbgm 10							//'_height'
      &setRegister r:8
      &pop
      &pushregister 8
      &pushregister 5
      &lessThan
      &not
      &not
      &jnz label9      
      &pushregister 8
      &pushregister 5
      &subtract
      &setRegister r:6
      &pop
      &pushregister 3
      &pushsdbgm 91							//'spacerMC'
      &pushsdb 10							//'_height'
      &pushregister 3
      &pushsdbgm 91							//'spacerMC'
      &pushsdbgm 10							//'_height'
      &pushregister 6
      &add
      &setMember
      &pushregister 3
      &pushsdbgm 92							//'selectionMC'
      &pushsdb 10							//'_height'
      &pushregister 3
      &pushsdbgm 92							//'selectionMC'
      &pushsdbgm 10							//'_height'
      &pushregister 6
      &add
      &setMember
      &pushregister 3
      &pushsdbgm 61							//'hitRegionMC'
      &pushsdb 10							//'_height'
      &pushregister 3
      &pushsdbgm 61							//'hitRegionMC'
      &pushsdbgm 10							//'_height'
      &pushregister 6
      &add
      &setMember
      &jmp label10      
     label9:
      &pushregister 3
      &pushsdbgm 86							//'textTF'
      &pushsdb 93							//'_y'
      &pushregister 3
      &pushsdbgm 86							//'textTF'
      &pushsdbgm 93							//'_y'
      &pushregister 5
      &pushregister 8
      &subtract
      &pushfloat 0.500000000000000
      &multiply
      &add
      &setMember
     label10:
      &pushregister 11
      &pushone
      &pushregister 1
      &pushsdb 55							//'getObjectiveLineColor'
      &callMethod
      &setRegister r:7
      &pop
      &pushregister 3
      &pushsdbgm 86							//'textTF'
      &pushsdb 94							//'textColor'
      &pushregister 7
      &setMember
      &pushregister 10
      &pushone
      &pushregister 3
      &pushsdbgm 95							//'checkboxMC'
      &dcallmp 96							// gotoAndPlay()
      &pushregister 7
      &pushregister 3
      &pushsdbgm 95							//'checkboxMC'
      &pushsdbgm 97							//'frameMC'
      &pushbyte 2
      &pushsdbgv 1							//'igm_pauseMenu'
      &dcallmp 69							// colorizeMovieClip()
      &pushregister 7
      &pushregister 3
      &pushsdbgm 95							//'checkboxMC'
      &pushsdbgm 98							//'checkMC'
      &pushbyte 2
      &pushsdbgv 1							//'igm_pauseMenu'
      &dcallmp 69							// colorizeMovieClip()
      &pushregister 3
      &pushsdbgm 92							//'selectionMC'
      &pushsdb 34							//'_visible'
      &pushfalse
      &setMember
      &pushregister 3
      &pushsdbgm 61							//'hitRegionMC'
      &pushsdbgm 62							//'bttn'
      &pushsdb 63							//'onRelease'
      &pushregister 9
      &pushregister 1
      &pushsdbgm 99							//'onObjectiveLineClicked'
      &pushregister 1
      &pushbyte 3
      &pushregister 2
      &pushsdb 100							//'bind1'
      &callMethod
      &setMember
      &pushregister 3
      &pushsdb 93							//'_y'
      &pushregister 12
      &setMember
      &pushregister 12
      &pushregister 3
      &pushsdbgm 10							//'_height'
      &add
      &setRegister r:12
      &pop
      &pushregister 3
      &pushone
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &dcallmp 101							// push()
      &pushregister 4
      &increment
      &setRegister r:4
      &pop
      &jmp label8      
     label11:
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 8							//'objectiveListMC'
      &pushsdbgm 20							//'linesMC'
      &pushsdbgm 10							//'_height'
      &setRegister r:18
      &pop
      &pushregister 18
      &pushregister 1
      &pushsdbgm 6							//'m_objectiveListVisibleHeight'
      &greaterThan
      &not
      &jnz label12      
      &pushzero
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 102							//'objectiveListScrollBarMC'
      &dcallmp 35							// enable()
      &jmp label13      
     label12:
      &pushzero
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 102							//'objectiveListScrollBarMC'
      &dcallmp 36							// disable()
     label13:
      &pushzero
      &pushregister 1
      &dcallmp 103							// selectObjectiveListBoxEntry()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 21							//'scrollObjectiveListBox'
    &function2  (r:4='minVisibleY') (r:1='this')
      &pushsdb 104							//'igm_pauseMenu::scrollObjectiveListBox( '
      &pushregister 4
      &toString
      &add
      &pushsdb 16							//' )'
      &add
      &trace
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 8							//'objectiveListMC'
      &pushsdbgm 20							//'linesMC'
      &pushsdbgm 10							//'_height'
      &setRegister r:7
      &pop
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 8							//'objectiveListMC'
      &pushsdbgm 20							//'linesMC'
      &pushsdb 93							//'_y'
      &pushzero
      &pushregister 4
      &subtract
      &setMember
      &pushregister 4
      &pushregister 1
      &pushsdbgm 6							//'m_objectiveListVisibleHeight'
      &add
      &setRegister r:5
      &pop
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushsdbgm 59							//'length'
      &setRegister r:6
      &pop
      &pushzero
      &setRegister r:3
      &pop
     label14:
      &pushregister 3
      &pushregister 6
      &lessThan
      &not
      &jnz label16      
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushregister 3
      &getMember
      &setRegister r:2
      &pop
      &pushregister 2
      &pushsdb 34							//'_visible'
      &pushregister 2
      &pushsdbgm 93							//'_y'
      &pushregister 5
      &lessThan
      &dup
      &not
      &jnz label15      
      &pop
      &pushregister 2
      &pushsdbgm 93							//'_y'
      &pushregister 2
      &pushsdbgm 10							//'_height'
      &add
      &pushregister 4
      &greaterThan
     label15:
      &setMember
      &pushregister 3
      &increment
      &setRegister r:3
      &pop
      &jmp label14      
     label16:
      &pushregister 7
      &pushsdbgv 105							//'visibleHeight'
      &greaterThan
      &not
      &jnz label17      
      &pushregister 4
      &pushregister 7
      &pushregister 1
      &pushsdbgm 6							//'m_objectiveListVisibleHeight'
      &subtract
      &pushzero
      &pushbyte 3
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 102							//'objectiveListScrollBarMC'
      &dcallmp 106							// setInfo()
     label17:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 107							//'ensureObjectiveLineVisibility'
    &function2  (r:6='lineIndex') (r:1='this')
      &pushsdb 108							//'igm_pauseMenu::ensureObjectiveLineVisibility( '
      &pushregister 6
      &toString
      &add
      &pushsdb 16							//' )'
      &add
      &trace
      &pushzero
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 8							//'objectiveListMC'
      &pushsdbgm 20							//'linesMC'
      &pushsdbgm 93							//'_y'
      &subtract
      &setRegister r:3
      &pop
      &pushregister 3
      &pushregister 1
      &pushsdbgm 6							//'m_objectiveListVisibleHeight'
      &add
      &setRegister r:4
      &pop
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushregister 6
      &getMember
      &setRegister r:2
      &pop
      &pushregister 2
      &pushsdbgm 93							//'_y'
      &pushregister 3
      &lessThan
      &not
      &jnz label18      
      &pushregister 2
      &pushsdbgm 93							//'_y'
      &pushone
      &pushregister 1
      &dcallmp 21							// scrollObjectiveListBox()
      &jmp label19      
     label18:
      &pushregister 2
      &pushsdbgm 93							//'_y'
      &pushregister 2
      &pushsdbgm 10							//'_height'
      &add
      &setRegister r:5
      &pop
      &pushregister 5
      &pushregister 4
      &greaterThan
      &not
      &jnz label19      
      &pushregister 3
      &pushregister 5
      &pushregister 4
      &subtract
      &add
      &pushone
      &pushregister 1
      &dcallmp 21							// scrollObjectiveListBox()
     label19:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 109							//'refreshPlayerStatus'
    &function2  () (r:1='this')
      &pushzero
      &setRegister r:2
      &pop
     label20:
      &pushregister 2
      &pushsdbgv 1							//'igm_pauseMenu'
      &pushsdbgm 110							//'MAX_PLAYERS'
      &lessThan
      &not
      &jnz label21      
      &pushsdbgv 111							//'MovieClip'
      &pushregister 1
      &pushsdbgm 112							//'m_playerLineMCs'
      &pushregister 2
      &getMember
      &cast
      &setRegister r:3
      &pop
      &pushregister 3
      &pushsdbgm 113							//'statusMC'
      &pushsdbgm 114							//'statusTF'
      &pushsdb 67							//'text'
      &pushsdb 115							//'$PauseMenu_playerStatus'
      &pushregister 2
      &toString
      &add
      &pushsdb 88							//'&outline'
      &add
      &setMember
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label20      
     label21:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 103							//'selectObjectiveListBoxEntry'
    &function2  () (r:1='this')
      &pushsdb 116							//'igm_pauseMenu::selectObjectiveListBoxEntry()'
      &trace
      &pushregister 1
      &pushsdbgm 65							//'m_selectedObjectiveLineIndex'
      &pushzero
      &lessThan
      &not
      &not
      &jnz label22      
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushregister 1
      &pushsdbgm 65							//'m_selectedObjectiveLineIndex'
      &getMember
      &setRegister r:6
      &pop
      &pushregister 6
      &pushsdbgm 92							//'selectionMC'
      &pushsdb 34							//'_visible'
      &pushfalse
      &setMember
      &pushregister 1
      &pushsdb 65							//'m_selectedObjectiveLineIndex'
      &pushbyte -1
      &setMember
     label22:
      &pushzero
      &pushsdb 27							//'Object'
      &new
      &setRegister r:5
      &pop
      &pushsdb 117							//'QueryGameEngine?PauseMenu_selectedMissionObjectiveId'
      &pushregister 5
      &loadVariables
      &pushsdb 118							//'igm_pauseMenu: PauseMenu_selectedMissionObjectiveId = "'
      &pushregister 5
      &pushsdbgm 119							//'PauseMenu_selectedMissionObjectiveId'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushregister 5
      &pushsdbgm 119							//'PauseMenu_selectedMissionObjectiveId'
      &toNumber
      &setRegister r:4
      &pop
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushsdbgm 59							//'length'
      &setRegister r:3
      &pop
      &pushzero
      &setRegister r:2
      &pop
     label23:
      &pushregister 2
      &pushregister 3
      &lessThan
      &not
      &jnz label25      
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushregister 2
      &getMember
      &setRegister r:6
      &pop
      &pushregister 6
      &pushsdbgm 85							//'objectiveId'
      &pushregister 4
      &equals
      &not
      &jnz label24      
      &jmp label25      
     label24:
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label23      
     label25:
      &pushregister 2
      &pushregister 3
      &lessThan
      &not
      &jnz label26      
      &pushregister 2
      &pushone
      &pushregister 1
      &dcallmp 107							// ensureObjectiveLineVisibility()
      &pushregister 1
      &pushsdbgm 58							//'m_objectiveLines'
      &pushregister 2
      &getMember
      &setRegister r:6
      &pop
      &pushregister 6
      &pushsdbgm 92							//'selectionMC'
      &pushsdb 34							//'_visible'
      &pushtrue
      &setMember
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 66							//'objectiveDescTF'
      &pushsdb 67							//'text'
      &pushsdb 120							//'$PauseMenu_objectiveDesc'
      &pushregister 4
      &add
      &pushsdb 88							//'&outline'
      &add
      &setMember
      &pushregister 1
      &pushsdb 65							//'m_selectedObjectiveLineIndex'
      &pushregister 2
      &setMember
      &jmp label27      
     label26:
      &pushzero
      &pushone
      &pushregister 1
      &dcallmp 21							// scrollObjectiveListBox()
     label27:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 121							//'submitMissionMap'
    &function  (    )    
      &pushsdb 122							//'igm_pauseMenu::submitMissionMap()'
      &trace
      &pushsdb 123							//'FSCommand:CallGameFunction'
      &pushsdb 124							//'%PauseMenu_receiveMissionMap?missionMap='
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 125							//'missionMap'
      &pushone
      &pushsdbgv 126							//'Pointer'
      &pushsdb 127							//'encode'
      &callMethod
      &add
      &getURL2
      &pushzero
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 125							//'missionMap'
      &dcallmp 128							// OnBound()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 129							//'refreshPlayerMuted'
    &function2  () (r:1='this')
      &pushsdb 130							//'igm_pauseMenu::refreshPlayerMuted()'
      &trace
      &pushzero
      &pushsdb 27							//'Object'
      &new
      &setRegister r:5
      &pop
      &pushsdb 131							//'QueryGameEngine?PauseMenu_playerMuted'
      &pushregister 5
      &loadVariables
      &pushsdb 132							//'igm_pauseMenu: PauseMenu_playerMuted = "'
      &pushregister 5
      &pushsdbgm 133							//'PauseMenu_playerMuted'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushsdb 81							//','
      &pushone
      &pushregister 5
      &pushsdbgm 133							//'PauseMenu_playerMuted'
      &pushsdb 82							//'split'
      &callMethod
      &setRegister r:4
      &pop
      &pushzero
      &setRegister r:2
      &pop
     label28:
      &pushregister 2
      &pushregister 1
      &pushsdbgm 134							//'m_playerCount'
      &lessThan
      &not
      &jnz label29      
      &pushsdbgv 111							//'MovieClip'
      &pushregister 1
      &pushsdbgm 112							//'m_playerLineMCs'
      &pushregister 2
      &getMember
      &cast
      &setRegister r:3
      &pop
      &pushregister 3
      &pushsdbgm 135							//'muteButtonMC'
      &pushsdbgm 136							//'muteMC'
      &pushsdb 34							//'_visible'
      &pushregister 4
      &pushregister 2
      &getMember
      &toNumber
      &pushzero
      &equals
      &not
      &setMember
      &pushregister 2
      &increment
      &setRegister r:2
      &pop
      &jmp label28      
     label29:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 137							//'initPlayerList'
    &function2  () (r:1='this', r:2='_global')
      &pushsdb 138							//'igm_pauseMenu::initPlayerList()'
      &trace
      &pushregister 1
      &pushsdb 112							//'m_playerLineMCs'
      &pushsdbgv 1							//'igm_pauseMenu'
      &pushsdbgm 110							//'MAX_PLAYERS'
      &pushone
      &pushsdb 139							//'Array'
      &new
      &setMember
      &pushzero
      &setRegister r:3
      &pop
     label30:
      &pushregister 3
      &pushsdbgv 1							//'igm_pauseMenu'
      &pushsdbgm 110							//'MAX_PLAYERS'
      &lessThan
      &not
      &jnz label31      
      &pushsdbgv 111							//'MovieClip'
      &pushregister 1
      &pushsdbgm 140							//'m_skirmishMC'
      &pushsdbgm 141							//'playerListMC'
      &pushregister 3
      &toString
      &getMember
      &cast
      &setRegister r:4
      &pop
      &pushregister 1
      &pushsdbgm 112							//'m_playerLineMCs'
      &pushregister 3
      &pushregister 4
      &setMember
      &pushregister 4
      &pushsdbgm 142							//'nameMC'
      &pushsdbgm 143							//'nameTF'
      &pushsdb 67							//'text'
      &pushsdb 144							//'$PauseMenu_playerName'
      &pushregister 3
      &toString
      &add
      &pushsdb 88							//'&outline'
      &add
      &setMember
      &pushregister 4
      &pushsdbgm 113							//'statusMC'
      &pushsdbgm 114							//'statusTF'
      &pushsdb 67							//'text'
      &pushsdb 115							//'$PauseMenu_playerStatus'
      &pushregister 3
      &toString
      &add
      &pushsdb 88							//'&outline'
      &add
      &setMember
      &pushregister 4
      &pushsdbgm 135							//'muteButtonMC'
      &pushsdb 145							//'onClicked'
      &pushregister 3
      &pushregister 1
      &pushsdbgm 146							//'onPlayerMuteButtonClicked'
      &pushregister 1
      &pushbyte 3
      &pushregister 2
      &pushsdb 100							//'bind1'
      &callMethod
      &setMember
      &pushregister 4
      &pushsdb 34							//'_visible'
      &pushfalse
      &setMember
      &pushregister 3
      &increment
      &setRegister r:3
      &pop
      &jmp label30      
     label31:
      &pushzero
      &pushsdb 27							//'Object'
      &new
      &setRegister r:7
      &pop
      &pushsdb 147							//'QueryGameEngine?PauseMenu_playerFaction&PauseMenu_playerColor&PauseMenu_playerIsNonLocalHuman&PauseMenu_playerMuted'
      &pushregister 7
      &loadVariables
      &pushsdb 148							//'igm_pauseMenu: PauseMenu_playerFaction = "'
      &pushregister 7
      &pushsdbgm 149							//'PauseMenu_playerFaction'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushsdb 150							//'igm_pauseMenu: PauseMenu_playerColor = "'
      &pushregister 7
      &pushsdbgm 151							//'PauseMenu_playerColor'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushsdb 152							//'igm_pauseMenu: PauseMenu_playerIsNonLocalHuman = "'
      &pushregister 7
      &pushsdbgm 153							//'PauseMenu_playerIsNonLocalHuman'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushsdb 132							//'igm_pauseMenu: PauseMenu_playerMuted = "'
      &pushregister 7
      &pushsdbgm 133							//'PauseMenu_playerMuted'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &pushsdb 81							//','
      &pushone
      &pushregister 7
      &pushsdbgm 149							//'PauseMenu_playerFaction'
      &pushsdb 82							//'split'
      &callMethod
      &setRegister r:8
      &pop
      &pushsdb 81							//','
      &pushone
      &pushregister 7
      &pushsdbgm 151							//'PauseMenu_playerColor'
      &pushsdb 82							//'split'
      &callMethod
      &setRegister r:9
      &pop
      &pushsdb 81							//','
      &pushone
      &pushregister 7
      &pushsdbgm 153							//'PauseMenu_playerIsNonLocalHuman'
      &pushsdb 82							//'split'
      &callMethod
      &setRegister r:11
      &pop
      &pushsdb 81							//','
      &pushone
      &pushregister 7
      &pushsdbgm 133							//'PauseMenu_playerMuted'
      &pushsdb 82							//'split'
      &callMethod
      &setRegister r:10
      &pop
      &pushregister 1
      &pushsdb 134							//'m_playerCount'
      &pushsdbgv 1							//'igm_pauseMenu'
      &pushsdbgm 110							//'MAX_PLAYERS'
      &pushregister 8
      &pushsdbgm 59							//'length'
      &pushbyte 2
      &pushsdbgv 154							//'Math'
      &pushsdb 155							//'min'
      &callMethod
      &setMember
      &pushzero
      &setRegister r:3
      &pop
     label32:
      &pushregister 3
      &pushregister 1
      &pushsdbgm 134							//'m_playerCount'
      &lessThan
      &not
      &jnz label35      
      &pushsdbgv 111							//'MovieClip'
      &pushregister 1
      &pushsdbgm 112							//'m_playerLineMCs'
      &pushregister 3
      &getMember
      &cast
      &setRegister r:4
      &pop
      &pushregister 4
      &pushsdb 34							//'_visible'
      &pushtrue
      &setMember
      &pushregister 8
      &pushregister 3
      &getMember
      &pushone
      &pushregister 4
      &pushsdbgm 156							//'factionMC'
      &dcallmp 96							// gotoAndPlay()
      &pushregister 4
      &pushsdbgm 157							//'colorMC'
      &pushsdbgm 157							//'colorMC'
      &pushone
      &pushsdb 70							//'Color'
      &new
      &setRegister r:5
      &pop
      &pushregister 9
      &pushregister 3
      &getMember
      &toNumber
      &pushone
      &pushregister 5
      &dcallmp 71							// setRGB()
      &pushregister 11
      &pushregister 3
      &getMember
      &toNumber
      &pushzero
      &equals
      &not
      &setRegister r:6
      &pop
      &pushregister 6
      &jnz label33      
      &pushsdb 158							//'_disabled'
      &jmp label34      
     label33:
      &pushsdb 159							//'_up'
     label34:
      &pushone
      &pushregister 4
      &pushsdbgm 135							//'muteButtonMC'
      &dcallmp 96							// gotoAndPlay()
      &pushregister 4
      &pushsdbgm 135							//'muteButtonMC'
      &pushsdbgm 136							//'muteMC'
      &pushsdb 34							//'_visible'
      &pushregister 10
      &pushregister 3
      &getMember
      &toNumber
      &pushzero
      &equals
      &not
      &setMember
      &pushregister 3
      &increment
      &setRegister r:3
      &pop
      &jmp label32      
     label35:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 11							//'initGUI'
    &function2  () (r:1='this', r:2='_global')
      &pushsdb 160							//'igm_pauseMenu::initGUI()'
      &trace
      &pushzero
      &pushregister 1
      &dcallmp 26							// initMode()
      &pushzero
      &pushregister 1
      &dcallmp 38							// initButtons()
      &pushsdb 161							//'../../common/ig_missionMap.swf'
      &pushone
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 125							//'missionMap'
      &dcallmp 162							// loadMovie()
      &pushzero
      &pushregister 1
      &dcallmp 121							// submitMissionMap()
      &pushregister 1
      &pushsdb 19							//'m_campaignMC'
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 7							//'campaignMC'
      &setMember
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdb 34							//'_visible'
      &pushfalse
      &setMember
      &pushregister 1
      &pushsdb 140							//'m_skirmishMC'
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 163							//'skirmishMC'
      &setMember
      &pushregister 1
      &pushsdbgm 140							//'m_skirmishMC'
      &pushsdb 34							//'_visible'
      &pushfalse
      &setMember
      &pushregister 1
      &pushsdbgm 32							//'m_mode'
      &setRegister r:0
      &pushsdb 164							//'Campaign'
      &strictEquals
      &jnz label36      
      &pushregister 0
      &pushsdb 165							//'Skirmish'
      &strictEquals
      &jnz label37      
      &jmp label38      
     label36:
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdb 34							//'_visible'
      &pushtrue
      &setMember
      &pushregister 1
      &pushone
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 102							//'objectiveListScrollBarMC'
      &dcallmp 166							// addListener()
      &pushregister 1
      &pushsdbgm 6							//'m_objectiveListVisibleHeight'
      &pushone
      &pushregister 1
      &pushsdbgm 19							//'m_campaignMC'
      &pushsdbgm 102							//'objectiveListScrollBarMC'
      &dcallmp 167							// setSize()
      &pushzero
      &pushregister 1
      &dcallmp 72							// populateObjectiveListBox()
      &jmp label39      
     label37:
      &pushregister 1
      &pushsdbgm 140							//'m_skirmishMC'
      &pushsdb 34							//'_visible'
      &pushtrue
      &setMember
      &pushzero
      &pushregister 1
      &dcallmp 137							// initPlayerList()
      &jmp label39      
     label38:
      &pushsdb 168							//'igm_pauseMenu: unrecognized mode "'
      &pushregister 1
      &pushsdbgm 32							//'m_mode'
      &add
      &pushsdb 31							//'"'
      &add
      &trace
      &jmp label39      
     label39:
      &pushregister 1
      &pushsdb 169							//'m_localMessageHandlerFunc'
      &pushregister 1
      &pushsdbgm 170							//'localMessageHandler'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 171							//'bind1DynamicParams'
      &callMethod
      &setMember
      &pushregister 1
      &pushsdbgm 169							//'m_localMessageHandlerFunc'
      &pushone
      &pushregister 2
      &pushsdbgm 172							//'gMH'
      &dcallmp 173							// addMessageHandler()
      &pushregister 1
      &pushsdb 174							//'m_localEventHandlerIndex'
      &pushregister 1
      &pushsdbgm 175							//'localEventHandler'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 176							//'bind2DynamicParams'
      &callMethod
      &pushone
      &pushregister 2
      &pushsdbgm 177							//'gEH'
      &pushsdb 178							//'addLocalEventHandler'
      &callMethod
      &setMember
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 54							//'resumeButton'
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 52							//'saveButton'
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 50							//'loadButton'
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 48							//'settingsButton'
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 46							//'exitButton'
      &pushbyte 5
      &initArray
      &pushone
      &pushregister 1
      &dcallmp 179							// registerIntroOuttroComponents()
      &pushzero
      &pushregister 1
      &dcallmp 180							// startIntro()
      &pushregister 1
      &pushsdbgm 181							//'onScreenExit'
      &pushregister 1
      &pushbyte 2
      &pushregister 2
      &pushsdb 45							//'bind0'
      &callMethod
      &pushone
      &pushregister 2
      &pushsdbgm 182							//'gSM'
      &dcallmp 183							// setOnExitScreen()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 181							//'onScreenExit'
    &function2  () (r:1='this', r:2='_global')
      &pushsdb 184							//'igm_pauseMenu::onScreenExit()'
      &trace
      &pushzero
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdbgm 4							//'m_screen'
      &pushsdbgm 125							//'missionMap'
      &dcallmp 185							// OnDestroying()
      &pushregister 1
      &pushsdbgm 174							//'m_localEventHandlerIndex'
      &pushone
      &pushregister 2
      &pushsdbgm 177							//'gEH'
      &dcallmp 186							// removeLocalEventHandler()
      &pushregister 1
      &pushsdbgm 169							//'m_localMessageHandlerFunc'
      &pushone
      &pushregister 2
      &pushsdbgm 172							//'gMH'
      &dcallmp 187							// removeMessageHandler()
      &pushregister 1
      &pushsdb 169							//'m_localMessageHandlerFunc'
      &delete
      &pop
      &pushzero
      &pushregister 1
      &dcallmp 56							// clearObjectiveListBox()
      &pushzero
      &pushregister 1
      &dcallmp 188							// clearData()
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdb 4							//'m_screen'
      &pushnull
      &setMember
      &pushsdbgv 3							//'Cafe2_BaseUIScreen'
      &pushsdb 5							//'m_thisClass'
      &pushnull
      &setMember
      &pushregister 2
      &pushsdb 1							//'igm_pauseMenu'
      &delete
      &pop
      &pushregister 2
      &pushsdb 3							//'Cafe2_BaseUIScreen'
      &delete
      &pop
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 170							//'localMessageHandler'
    &function2  (r:3='messageCode') (r:1='this', r:2='_global')
      &pushsdb 189							//'igm_pauseMenu::localMessageHandler() messageCode = \''
      &pushregister 3
      &add
      &pushsdb 190							//'\''
      &add
      &trace
      &pushregister 3
      &setRegister r:0
      &pushregister 2
      &pushsdbgm 191							//'MSGCODE'
      &pushsdbgm 192							//'IGM_CLOSE_PAUSE_MENU'
      &strictEquals
      &jnz label40      
      &pushregister 0
      &pushregister 2
      &pushsdbgm 191							//'MSGCODE'
      &pushsdbgm 193							//'IG_PAUSE_MENU_REFRESH_OBJECTIVES'
      &strictEquals
      &jnz label41      
      &pushregister 0
      &pushregister 2
      &pushsdbgm 191							//'MSGCODE'
      &pushsdbgm 194							//'IG_PAUSE_MENU_SUBMIT_MISSION_MAP'
      &strictEquals
      &jnz label42      
      &pushregister 0
      &pushregister 2
      &pushsdbgm 191							//'MSGCODE'
      &pushsdbgm 195							//'IG_PAUSE_MENU_SELECT_OBJECTIVE'
      &strictEquals
      &jnz label43      
      &pushregister 0
      &pushregister 2
      &pushsdbgm 191							//'MSGCODE'
      &pushsdbgm 196							//'IG_PAUSE_MENU_REFRESH_PLAYER_MUTED'
      &strictEquals
      &jnz label44      
      &pushregister 0
      &pushregister 2
      &pushsdbgm 191							//'MSGCODE'
      &pushsdbgm 197							//'IG_PAUSE_MENU_REFRESH_PLAYER_STATUS'
      &strictEquals
      &jnz label45      
      &jmp label46      
     label40:
      &pushzero
      &pushregister 1
      &dcallmp 53							// backButtonClicked()
      &pushtrue
      &return
     label41:
      &pushzero
      &pushregister 1
      &dcallmp 72							// populateObjectiveListBox()
      &pushtrue
      &return
     label42:
      &pushzero
      &pushregister 1
      &dcallmp 121							// submitMissionMap()
      &pushtrue
      &return
     label43:
      &pushzero
      &pushregister 1
      &dcallmp 103							// selectObjectiveListBoxEntry()
      &pushtrue
      &return
     label44:
      &pushzero
      &pushregister 1
      &dcallmp 129							// refreshPlayerMuted()
      &pushtrue
      &return
     label45:
      &pushzero
      &pushregister 1
      &dcallmp 109							// refreshPlayerStatus()
      &pushtrue
      &return
     label46:
      &pushfalse
      &return
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 175							//'localEventHandler'
    &function2  (r:3='keyCode', 'controller') (r:1='this', r:2='_global')
      &pushsdb 198							//'igm_pauseMenu::localEventHandler() keyCode == '
      &pushregister 3
      &add
      &trace
      &pushregister 3
      &pushsdbgv 199							//'INPUTCODE'
      &pushsdbgm 200							//'ESCAPE'
      &strictEquals
      &jnz label47      
      &jmp label48      
     label47:
      &pushzero
      &pushregister 1
      &dcallmp 53							// backButtonClicked()
      &jmp label49      
     label48:
      &pushregister 3
      &pushone
      &pushregister 2
      &pushsdbgm 201							//'gFM'
      &dcallmp 202							// handleDefaultInputs()
      &jmp label49      
     label49:
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 44							//'onExitButtonClicked'
    &function  (    )    
      &pushsdb 203							//'igm_pauseMenu::onExitButtonClicked()'
      &trace
      &getURL 'FSCommand:CallGameFunction'       '%igm_pauseMenu_onExitClicked'      
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 47							//'onSettingsButtonClicked'
    &function2  () (r:1='this', r:2='_global')
      &pushsdb 204							//'igm_pauseMenu::onSettingsButtonClicked()'
      &trace
      &pushregister 2
      &pushsdbgm 205							//'SCREEN'
      &pushsdbgm 206							//'FEG_OPTIONS'
      &pushone
      &pushregister 1
      &dcallmp 207							// startOuttro()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 49							//'onLoadButtonClicked'
    &function2  () (r:1='this', r:2='_global')
      &pushsdb 208							//'igm_pauseMenu::onLoadButtonClicked()'
      &trace
      &pushregister 2
      &pushsdbgm 209							//'GAME'
      &pushsdb 210							//'SAVELOADSCREEN_TYPE'
      &pushregister 2
      &pushsdbgm 211							//'ENUM'
      &pushsdbgm 212							//'SAVELOADSCREEN_LOAD'
      &setMember
      &pushregister 2
      &pushsdbgm 205							//'SCREEN'
      &pushsdbgm 213							//'FEG_SAVELOAD'
      &pushone
      &pushregister 1
      &dcallmp 207							// startOuttro()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 51							//'onSaveButtonClicked'
    &function2  () (r:1='this', r:2='_global')
      &pushsdb 214							//'igm_pauseMenu::onSaveButtonClicked()'
      &trace
      &getURL 'FSCommand:CallGameFunction'       '%igm_pauseMenu.OnSaveClicked'      
      &pushregister 2
      &pushsdbgm 209							//'GAME'
      &pushsdb 210							//'SAVELOADSCREEN_TYPE'
      &pushregister 2
      &pushsdbgm 211							//'ENUM'
      &pushsdbgm 215							//'SAVELOADSCREEN_SAVE'
      &setMember
      &pushregister 2
      &pushsdbgm 205							//'SCREEN'
      &pushsdbgm 213							//'FEG_SAVELOAD'
      &pushone
      &pushregister 1
      &dcallmp 207							// startOuttro()
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 99							//'onObjectiveLineClicked'
    &function2  (r:1='objectiveId') ()
      &pushsdb 216							//'igm_pauseMenu::onObjectiveLineClicked( '
      &pushregister 1
      &toString
      &add
      &pushsdb 16							//' )'
      &add
      &trace
      &pushsdb 123							//'FSCommand:CallGameFunction'
      &pushsdb 217							//'%PauseMenu_onMissionObjectiveClicked?objectiveId='
      &pushregister 1
      &add
      &getURL2
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 146							//'onPlayerMuteButtonClicked'
    &function2  (r:1='playerNum') ()
      &pushsdb 218							//'igm_pauseMenu::onPlayerMuteButtonClicked( '
      &pushregister 1
      &toString
      &add
      &pushsdb 16							//' )'
      &add
      &trace
      &pushsdb 123							//'FSCommand:CallGameFunction'
      &pushsdb 219							//'%PauseMenu_onPlayerMuteClicked?playerNum='
      &pushregister 1
      &toString
      &add
      &getURL2
    &end // of function 

    &setMember
    &pushregister 1
    &pushsdb 58							//'m_objectiveLines'
    &pushzero
    &pushsdb 139							//'Array'
    &new
    &setMember
    &pushregister 1
    &pushsdb 65							//'m_selectedObjectiveLineIndex'
    &pushbyte -1
    &setMember
    &pushregister 1
    &pushsdb 134							//'m_playerCount'
    &pushzero
    &setMember
    &pushregister 0
    &pushsdb 110							//'MAX_PLAYERS'
    &pushbyte 6
    &setMember
    &pushone
    &pushnull
    &pushglobalgv
    &pushsdbgm 1							//'igm_pauseMenu'
    &pushsdbgm 12							//'prototype'
    &pushbyte 3
    &pushsdb 220							//'ASSetPropFlags'
    &callFunction
   label50:
    &pop
  &end // of initMovieClip 83
&end
