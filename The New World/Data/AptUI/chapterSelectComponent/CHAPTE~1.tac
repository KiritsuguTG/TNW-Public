movie 'C:\projects\Ra3\PRODUC~1\Data\APTBUI~1\034A3~1.0-D\pc\Output\CHAPTE~1\\CHAPTE~1.eaf' &compressed // flash 7, total frames: 1, frame rate: 30 fps, 488x593 px
  
  &importAssets &from '../cafe/mouseComponents/std_mouseRadioButton.swf'
    'std_mouseRadioButtonControllerSymbol' &as 5
  &end // of importAssets
  
  &importAssets &from '../cafe/mouseComponents/std_mouseRadioButton.swf'
    'std_mouseRadioButtonSymbol' &as 6
  &end // of importAssets
  
  &importAssets &from '../cafe/mouseComponents/std_mouseScrollingListbox.swf'
    'std_mouseScrollingListboxSymbol' &as 7
  &end // of importAssets

  &defineMovieClip 8 // total frames: 1

    &placeMovieClip 5 &as 'radioController_faction'
    
      &onClipEvent &construct
        &pushs 'm_name'
        &pushssv 'RadioButtonController'
      &end
    &end // of placeMovieClip 5

    &placeMovieClip 6 &as 'radioButton_soviets'
    
      &onClipEvent &construct
        &pushs 'm_width'
        &pushshort 200
        &setVariable
        &pushs 'm_textAlign'
        &pushfalse
        &setVariable
        &pushs 'm_labelPosition'
        &pushssv 'right align'
        &pushs 'm_label_x'
        &pushzerosv
        &pushs 'm_label_y'
        &pushzerosv
        &pushs 'm_focusDirs'
        &pushssv 'Up/Down'
        &pushs 'm_iconType'
        &pushssv 'default'
        &pushs 'm_extLabel'
        &pushssv ''
        &pushs 'm_nTruncateType'
        &pushzerosv
        &pushs 'm_label'
        &pushssv '$APT:SOVIETSSHORTNAME'
        &pushs 'm_bEnabled'
        &pushtrue
        &setVariable
        &pushs 'm_refFM'
        &pushssv '_root.gFM'
        &pushs 'm_initiallySelected'
        &pushtrue
        &setVariable
        &pushs 'm_tabIndex'
        &pushbyte -1
        &setVariable
        &pushs 'm_bVisible'
        &pushtrue
        &setVariable
        &pushs 'm_contentSymbol'
        &pushssv 'ChapterSelectRadioButtonContentClip'
        &pushs 'm_controller'
        &pushssv 'radioController_faction'
      &end
    &end // of placeMovieClip 6

    &placeMovieClip 6 &as 'radioButton_allies'
    
      &onClipEvent &construct
        &pushs 'm_width'
        &pushshort 200
        &setVariable
        &pushs 'm_textAlign'
        &pushfalse
        &setVariable
        &pushs 'm_labelPosition'
        &pushssv 'right align'
        &pushs 'm_label_x'
        &pushzerosv
        &pushs 'm_label_y'
        &pushzerosv
        &pushs 'm_focusDirs'
        &pushssv 'Up/Down'
        &pushs 'm_iconType'
        &pushssv 'default'
        &pushs 'm_extLabel'
        &pushssv ''
        &pushs 'm_nTruncateType'
        &pushzerosv
        &pushs 'm_label'
        &pushssv '$APT:ALLIESSHORTNAME'
        &pushs 'm_bEnabled'
        &pushtrue
        &setVariable
        &pushs 'm_refFM'
        &pushssv '_root.gFM'
        &pushs 'm_initiallySelected'
        &pushfalse
        &setVariable
        &pushs 'm_tabIndex'
        &pushbyte -1
        &setVariable
        &pushs 'm_bVisible'
        &pushtrue
        &setVariable
        &pushs 'm_contentSymbol'
        &pushssv 'ChapterSelectRadioButtonContentClip'
        &pushs 'm_controller'
        &pushssv 'radioController_faction'
      &end
    &end // of placeMovieClip 6

    &placeMovieClip 6 &as 'radioButton_japan'
    
      &onClipEvent &construct
        &pushs 'm_width'
        &pushshort 200
        &setVariable
        &pushs 'm_textAlign'
        &pushfalse
        &setVariable
        &pushs 'm_labelPosition'
        &pushssv 'right align'
        &pushs 'm_label_x'
        &pushzerosv
        &pushs 'm_label_y'
        &pushzerosv
        &pushs 'm_focusDirs'
        &pushssv 'Up/Down'
        &pushs 'm_iconType'
        &pushssv 'default'
        &pushs 'm_extLabel'
        &pushssv ''
        &pushs 'm_nTruncateType'
        &pushzerosv
        &pushs 'm_label'
        &pushssv '$APT:JAPANSHORTNAME'
        &pushs 'm_bEnabled'
        &pushtrue
        &setVariable
        &pushs 'm_refFM'
        &pushssv '_root.gFM'
        &pushs 'm_initiallySelected'
        &pushfalse
        &setVariable
        &pushs 'm_tabIndex'
        &pushbyte -1
        &setVariable
        &pushs 'm_bVisible'
        &pushtrue
        &setVariable
        &pushs 'm_contentSymbol'
        &pushssv 'ChapterSelectRadioButtonContentClip'
        &pushs 'm_controller'
        &pushssv 'radioController_faction'
      &end
    &end // of placeMovieClip 6

    &placeMovieClip 5 &as 'radioController_difficulty'
    
      &onClipEvent &construct
        &pushs 'm_name'
        &pushssv 'RadioButtonController'
      &end
    &end // of placeMovieClip 5

    &placeMovieClip 6 &as 'radioButton_easy'
    
      &onClipEvent &construct
        &pushs 'm_width'
        &pushshort 200
        &setVariable
        &pushs 'm_textAlign'
        &pushfalse
        &setVariable
        &pushs 'm_labelPosition'
        &pushssv 'right align'
        &pushs 'm_label_x'
        &pushzerosv
        &pushs 'm_label_y'
        &pushzerosv
        &pushs 'm_focusDirs'
        &pushssv 'Up/Down'
        &pushs 'm_iconType'
        &pushssv 'default'
        &pushs 'm_extLabel'
        &pushssv ''
        &pushs 'm_nTruncateType'
        &pushzerosv
        &pushs 'm_label'
        &pushssv '$EASYDIFFICULTY'
        &pushs 'm_bEnabled'
        &pushtrue
        &setVariable
        &pushs 'm_refFM'
        &pushssv '_root.gFM'
        &pushs 'm_initiallySelected'
        &pushfalse
        &setVariable
        &pushs 'm_tabIndex'
        &pushbyte -1
        &setVariable
        &pushs 'm_bVisible'
        &pushtrue
        &setVariable
        &pushs 'm_contentSymbol'
        &pushssv 'radioButtonContentClip'
        &pushs 'm_controller'
        &pushssv 'radioController_difficulty'
      &end
    &end // of placeMovieClip 6

    &placeMovieClip 6 &as 'radioButton_medium'
    
      &onClipEvent &construct
        &pushs 'm_width'
        &pushshort 200
        &setVariable
        &pushs 'm_textAlign'
        &pushfalse
        &setVariable
        &pushs 'm_labelPosition'
        &pushssv 'right align'
        &pushs 'm_label_x'
        &pushzerosv
        &pushs 'm_label_y'
        &pushzerosv
        &pushs 'm_focusDirs'
        &pushssv 'Up/Down'
        &pushs 'm_iconType'
        &pushssv 'default'
        &pushs 'm_extLabel'
        &pushssv ''
        &pushs 'm_nTruncateType'
        &pushzerosv
        &pushs 'm_label'
        &pushssv '$MEDIUMDIFFICULTY'
        &pushs 'm_bEnabled'
        &pushtrue
        &setVariable
        &pushs 'm_refFM'
        &pushssv '_root.gFM'
        &pushs 'm_initiallySelected'
        &pushfalse
        &setVariable
        &pushs 'm_tabIndex'
        &pushbyte -1
        &setVariable
        &pushs 'm_bVisible'
        &pushtrue
        &setVariable
        &pushs 'm_contentSymbol'
        &pushssv 'radioButtonContentClip'
        &pushs 'm_controller'
        &pushssv 'radioController_difficulty'
      &end
    &end // of placeMovieClip 6

    &placeMovieClip 6 &as 'radioButton_hard'
    
      &onClipEvent &construct
        &pushs 'm_width'
        &pushshort 200
        &setVariable
        &pushs 'm_textAlign'
        &pushfalse
        &setVariable
        &pushs 'm_labelPosition'
        &pushssv 'right align'
        &pushs 'm_label_x'
        &pushzerosv
        &pushs 'm_label_y'
        &pushzerosv
        &pushs 'm_focusDirs'
        &pushssv 'Up/Down'
        &pushs 'm_iconType'
        &pushssv 'default'
        &pushs 'm_extLabel'
        &pushssv ''
        &pushs 'm_nTruncateType'
        &pushzerosv
        &pushs 'm_label'
        &pushssv '$HARDDIFFICULTY'
        &pushs 'm_bEnabled'
        &pushtrue
        &setVariable
        &pushs 'm_refFM'
        &pushssv '_root.gFM'
        &pushs 'm_initiallySelected'
        &pushfalse
        &setVariable
        &pushs 'm_tabIndex'
        &pushbyte -1
        &setVariable
        &pushs 'm_bVisible'
        &pushtrue
        &setVariable
        &pushs 'm_contentSymbol'
        &pushssv 'radioButtonContentClip'
        &pushs 'm_controller'
        &pushssv 'radioController_difficulty'
      &end
    &end // of placeMovieClip 6

    &placeMovieClip 7 &as 'missionList'
    
      &onClipEvent &construct
        &constants 'm_focusDirs', 'Up/Down', 'm_numEntries', 'm_vPadding', 'm_bEnabled', 'm_refFM', '_root.gFM', 'm_initiallySelected', 'm_tabIndex', 'm_bVisible', 'm_scrollbarOffset', 'm_BgVisible', 'm_renderWidth', 'm_renderHeight', 'm_backgroundMargin', 'm_useHighlights', 'm_alternateBackgroundColors', 'm_backgroundColor1', 'm_backgroundColor2'  
        &pushsdb 0							//'m_focusDirs'
        &pushsdb 1							//'Up/Down'
        &setVariable
        &pushsdb 2							//'m_numEntries'
        &pushbyte 9
        &setVariable
        &pushsdb 3							//'m_vPadding'
        &pushbyte 5
        &setVariable
        &pushsdb 4							//'m_bEnabled'
        &pushtrue
        &setVariable
        &pushsdb 5							//'m_refFM'
        &pushsdb 6							//'_root.gFM'
        &setVariable
        &pushsdb 7							//'m_initiallySelected'
        &pushfalse
        &setVariable
        &pushsdb 8							//'m_tabIndex'
        &pushbyte -1
        &setVariable
        &pushsdb 9							//'m_bVisible'
        &pushtrue
        &setVariable
        &pushsdb 10							//'m_scrollbarOffset'
        &pushzero
        &initArray
        &setVariable
        &pushsdbgv 10							//'m_scrollbarOffset'
        &pushzero
        &pushbyte 10
        &setMember
        &pushsdbgv 10							//'m_scrollbarOffset'
        &pushone
        &pushzero
        &setMember
        &pushsdb 11							//'m_BgVisible'
        &pushtrue
        &setVariable
        &pushsdb 12							//'m_renderWidth'
        &pushshort 435
        &setVariable
        &pushsdb 13							//'m_renderHeight'
        &pushshort 185
        &setVariable
        &pushsdb 14							//'m_backgroundMargin'
        &pushbyte 3
        &setVariable
        &pushsdb 15							//'m_useHighlights'
        &pushtrue
        &setVariable
        &pushsdb 16							//'m_alternateBackgroundColors'
        &pushtrue
        &setVariable
        &pushsdb 17							//'m_backgroundColor1'
        &pushlong 2622983
        &setVariable
        &pushsdb 18							//'m_backgroundColor2'
        &pushzerosv
      &end
    &end // of placeMovieClip 7
  &end // of defineMovieClip 8
  
  &exportAssets
    8 &as 'chapterSelectComponentSymbol'
  &end // of exportAssets
&end
