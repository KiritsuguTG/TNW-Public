movie 'C:\projects\Ra3\PRODUC~1\Data\APTBUI~1\034A3~1.0-D\pc\Output\TacticalHUDSelectionDetails\\TacticalHUDSelectionDetails.eaf' &compressed // flash 7, total frames: 40, frame rate: 30 fps, 1024x768 px

  &defineMovieClip 5 // total frames: 20

    &frame 9
      &stop
    &end // of frame 9

    &frame 19
      &stop
    &end // of frame 19
  &end // of defineMovieClip 5
  
  &exportAssets
    5 &as 'AmmoPip'
  &end // of exportAssets

  &defineMovieClip 12 // total frames: 30

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
  &end // of defineMovieClip 12

  &defineMovieClip 15 // total frames: 40

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
  &end // of defineMovieClip 15
  
  &exportAssets
    15 &as 'AttackMoveHighlighted'
  &end // of exportAssets

  &defineMovieClip 22 // total frames: 30

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
  &end // of defineMovieClip 22

  &defineMovieClip 23 // total frames: 40

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
  &end // of defineMovieClip 23
  
  &exportAssets
    23 &as 'ReverseMoveNormal'
  &end // of exportAssets

  &defineMovieClip 30 // total frames: 30

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
  &end // of defineMovieClip 30

  &defineMovieClip 31 // total frames: 40

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
  &end // of defineMovieClip 31
  
  &exportAssets
    31 &as 'AttackMoveNormal'
  &end // of exportAssets

  &defineMovieClip 38 // total frames: 30

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
  &end // of defineMovieClip 38

  &defineMovieClip 39 // total frames: 40

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
  &end // of defineMovieClip 39
  
  &exportAssets
    39 &as 'AssaultMoveNormal'
  &end // of exportAssets

  &defineMovieClip 46 // total frames: 30

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
  &end // of defineMovieClip 46

  &defineMovieClip 47 // total frames: 40

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
  &end // of defineMovieClip 47
  
  &exportAssets
    47 &as 'ForceAttackNormal'
  &end // of exportAssets

  &defineMovieClip 54 // total frames: 30

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
  &end // of defineMovieClip 54

  &defineMovieClip 57 // total frames: 40

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
  &end // of defineMovieClip 57
  
  &exportAssets
    57 &as 'StanceHoldGroundHighlighted'
  &end // of exportAssets

  &defineMovieClip 64 // total frames: 30

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
  &end // of defineMovieClip 64

  &defineMovieClip 65 // total frames: 40

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
  &end // of defineMovieClip 65
  
  &exportAssets
    65 &as 'StanceHoldFireHighlighted'
  &end // of exportAssets

  &defineMovieClip 72 // total frames: 30

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
  &end // of defineMovieClip 72

  &defineMovieClip 73 // total frames: 40

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
  &end // of defineMovieClip 73
  
  &exportAssets
    73 &as 'StanceGuardHighlighted'
  &end // of exportAssets

  &defineMovieClip 80 // total frames: 30

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
  &end // of defineMovieClip 80

  &defineMovieClip 81 // total frames: 40

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
  &end // of defineMovieClip 81
  
  &exportAssets
    81 &as 'StanceAggressiveHighlighted'
  &end // of exportAssets

  &defineMovieClip 88 // total frames: 30

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
  &end // of defineMovieClip 88

  &defineMovieClip 89 // total frames: 40

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
  &end // of defineMovieClip 89
  
  &exportAssets
    89 &as 'StanceHoldGroundNormal'
  &end // of exportAssets

  &defineMovieClip 96 // total frames: 30

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
  &end // of defineMovieClip 96

  &defineMovieClip 97 // total frames: 40

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
  &end // of defineMovieClip 97
  
  &exportAssets
    97 &as 'StanceHoldFireNormal'
  &end // of exportAssets

  &defineMovieClip 104 // total frames: 30

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
  &end // of defineMovieClip 104

  &defineMovieClip 105 // total frames: 40

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
  &end // of defineMovieClip 105
  
  &exportAssets
    105 &as 'StanceGuardNormal'
  &end // of exportAssets

  &defineMovieClip 112 // total frames: 30

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
  &end // of defineMovieClip 112

  &defineMovieClip 113 // total frames: 40

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
  &end // of defineMovieClip 113
  
  &exportAssets
    113 &as 'StanceAggressiveNormal'
  &end // of exportAssets

  &defineMovieClip 120 // total frames: 30

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
  &end // of defineMovieClip 120

  &defineMovieClip 123 // total frames: 40

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
  &end // of defineMovieClip 123
  
  &exportAssets
    123 &as 'WaypointModeNormal'
  &end // of exportAssets

  &defineMovieClip 130 // total frames: 30

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
  &end // of defineMovieClip 130

  &defineMovieClip 131 // total frames: 40

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
  &end // of defineMovieClip 131
  
  &exportAssets
    131 &as 'PlanningModeNormal'
  &end // of exportAssets

  &defineMovieClip 138 // total frames: 30

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
  &end // of defineMovieClip 138

  &defineMovieClip 139 // total frames: 40

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
  &end // of defineMovieClip 139
  
  &exportAssets
    139 &as 'StopNormal'
  &end // of exportAssets

  &defineMovieClip 146 // total frames: 30

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
  &end // of defineMovieClip 146

  &defineMovieClip 147 // total frames: 40

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
  &end // of defineMovieClip 147
  
  &exportAssets
    147 &as 'FormationMoveNormal'
  &end // of exportAssets

  &defineMovieClip 154 // total frames: 30

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
  &end // of defineMovieClip 154

  &defineMovieClip 155 // total frames: 40

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
  &end // of defineMovieClip 155
  
  &exportAssets
    155 &as 'ForceMoveNormal'
  &end // of exportAssets

  &defineMovieClip 162 // total frames: 30

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
  &end // of defineMovieClip 162

  &defineMovieClip 163 // total frames: 40

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
  &end // of defineMovieClip 163
  
  &exportAssets
    163 &as 'WaypointModeHighlighted'
  &end // of exportAssets

  &defineMovieClip 170 // total frames: 30

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
  &end // of defineMovieClip 170

  &defineMovieClip 171 // total frames: 40

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
  &end // of defineMovieClip 171
  
  &exportAssets
    171 &as 'PlanningModeHighlighted'
  &end // of exportAssets

  &defineMovieClip 178 // total frames: 30

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
  &end // of defineMovieClip 178

  &defineMovieClip 179 // total frames: 40

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
  &end // of defineMovieClip 179
  
  &exportAssets
    179 &as 'StopHighlighted'
  &end // of exportAssets

  &defineMovieClip 186 // total frames: 30

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
  &end // of defineMovieClip 186

  &defineMovieClip 187 // total frames: 40

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
  &end // of defineMovieClip 187
  
  &exportAssets
    187 &as 'FormationMoveHighlighted'
  &end // of exportAssets

  &defineMovieClip 194 // total frames: 30

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
  &end // of defineMovieClip 194

  &defineMovieClip 195 // total frames: 40

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
  &end // of defineMovieClip 195
  
  &exportAssets
    195 &as 'ForceMoveHighlighted'
  &end // of exportAssets

  &defineMovieClip 202 // total frames: 30

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
  &end // of defineMovieClip 202

  &defineMovieClip 203 // total frames: 40

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
  &end // of defineMovieClip 203
  
  &exportAssets
    203 &as 'ReverseMoveHighlighted'
  &end // of exportAssets

  &defineMovieClip 210 // total frames: 30

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
  &end // of defineMovieClip 210

  &defineMovieClip 211 // total frames: 40

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
  &end // of defineMovieClip 211
  
  &exportAssets
    211 &as 'ForceAttackHighlighted'
  &end // of exportAssets

  &defineMovieClip 218 // total frames: 30

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
  &end // of defineMovieClip 218

  &defineMovieClip 219 // total frames: 40

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
  &end // of defineMovieClip 219
  
  &exportAssets
    219 &as 'AssaultMoveHighlighted'
  &end // of exportAssets

  &frame 0
    &constants 'abilities', 'stage', 'Pointer', 'encode', 'unitCategory', 'unitCategoryInd', 'gotoAndPlay', 'weaponCategory', 'weaponCategoryInd', 'oreRemaining', '_visible', 'rank', 'Math', 'max', 'min', 'rankFactionLabel', 'rankInd', 'factionLabel', '_', 'image', 'healthPct', 'healthBar', 'gotoAndStop', 'upgrades', 'portraitHelpSite', 'ammoCapacity', 'ammoLoad', 'ammoDisplay', 'initialized', 'SetCapacity', 'SetLoad', 'basicCommands', 'advCommands', 'panel', 'infiltrated', 'infiltratedOverlay', '_open', '_close', 'openAdvancedCommandsButtonEnabled', 'openAdvancedCommandsButton', 'Color', 'setRGB', '_up', 'openAdvancedCommandsHighlightClip', 'highlightDummy', 'CreateHUDGadgetFlash', 'Close', 'GetAbilityButtonStage', 'SetState', 'SetUnitCategory', 'SetWeaponCategory', 'SetOreRemainingVisible', 'SetRank', 'SetHealth', 'GetUpgradeIconList', 'GetPortraitHelpSite', 'SetLargeBarVisibility', 'SetAmmo', 'GetCommandButton', 'SetInfiltrated', 'OpenAdvancedCommands', 'CloseAdvancedCommands', 'GetOpenAdvancedCommandsButtonHelpSite', 'SetOpenAdvancedCommandsButtonEnabled', 'SetOpenAdvancedCommandsButtonHighlighted', 'onUnload', '_hide', 'FSCommand:', 'OnInitialized', 'this', 'qualifyName', '', 'extern', 'InGame', '_infantry', '_gun', 'SetUnitHealth'  
    &function2 GetAbilityButtonStage (r:1='index') ()
      &pushsdbgv 0							//'abilities'
      &pushregister 1
      &toString
      &getMember
      &pushsdbgm 1							//'stage'
      &pushone
      &pushsdbgv 2							//'Pointer'
      &pushsdb 3							//'encode'
      &callMethod
      &return
    &end // of function GetAbilityButtonStage

    &function2 SetState (r:1='state') ()
      &pushregister 1
      &gotoAndPlay    &end // of function SetState

    &function2 SetUnitCategory (r:1='arg') ()
      &pushsdb 4							//'unitCategory'
      &pushregister 1
      &setVariable
      &pushsdbgv 4							//'unitCategory'
      &pushone
      &pushsdbgv 5							//'unitCategoryInd'
      &dcallmp 6							// gotoAndPlay()
    &end // of function SetUnitCategory

    &function2 SetWeaponCategory (r:1='arg') ()
      &pushsdb 7							//'weaponCategory'
      &pushregister 1
      &setVariable
      &pushsdbgv 7							//'weaponCategory'
      &pushone
      &pushsdbgv 8							//'weaponCategoryInd'
      &dcallmp 6							// gotoAndPlay()
    &end // of function SetWeaponCategory

    &function2 SetOreRemainingVisible (r:1='arg') ()
      &pushregister 1
      &toNumber
      &pushzero
      &equals
      &not
      &jnz label1      
      &pushsdbgv 9							//'oreRemaining'
      &pushsdb 10							//'_visible'
      &pushfalse
      &setMember
      &jmp label2      
     label1:
      &pushsdbgv 9							//'oreRemaining'
      &pushsdb 10							//'_visible'
      &pushtrue
      &setMember
     label2:
    &end // of function SetOreRemainingVisible

    &function2 SetRank (r:2='rankArg', r:1='factionArg') ()
      &pushsdb 11							//'rank'
      &pushbyte 4
      &pushone
      &pushregister 2
      &toNumber
      &pushbyte 2
      &pushsdbgv 12							//'Math'
      &pushsdb 13							//'max'
      &callMethod
      &pushbyte 2
      &pushsdbgv 12							//'Math'
      &dcallmsv 14							// min()
      &pushsdb 15							//'rankFactionLabel'
      &pushregister 1
      &toString
      &setVariable
      &pushsdbgv 16							//'rankInd'
      &pushsdb 17							//'factionLabel'
      &pushregister 1
      &toString
      &setMember
      &pushsdb 18							//'_'
      &pushsdbgv 11							//'rank'
      &toString
      &add
      &pushone
      &pushsdbgv 16							//'rankInd'
      &dcallmp 6							// gotoAndPlay()
      &pushsdbgv 16							//'rankInd'
      &pushsdbgm 17							//'factionLabel'
      &pushone
      &pushsdbgv 16							//'rankInd'
      &pushsdbgm 19							//'image'
      &dcallmp 6							// gotoAndPlay()
    &end // of function SetRank

    &function2 SetHealth (r:4='curHealthArg', r:3='maxHealthArg') ()
      &pushregister 3
      &toNumber
      &setRegister r:1
      &pop
      &pushregister 1
      &pushzero
      &equals
      &not
      &not
      &jnz label3      
      &pushsdb 20							//'healthPct'
      &pushregister 4
      &toNumber
      &pushregister 3
      &toNumber
      &divide
      &pushbyte 100
      &multiply
      &setVariable
      &jmp label4      
     label3:
      &pushsdb 20							//'healthPct'
      &pushzerosv
     label4:
      &pushsdbgv 20							//'healthPct'
      &pushone
      &add
      &setRegister r:2
      &pop
      &pushregister 2
      &pushone
      &pushsdbgv 21							//'healthBar'
      &dcallmp 22							// gotoAndStop()
    &end // of function SetHealth

    &function GetUpgradeIconList (    )    
      &pushsdbgv 23							//'upgrades'
      &pushone
      &pushsdbgv 2							//'Pointer'
      &pushsdb 3							//'encode'
      &callMethod
      &return
    &end // of function GetUpgradeIconList

    &function GetPortraitHelpSite (    )    
      &pushsdbgv 24							//'portraitHelpSite'
      &pushone
      &pushsdbgv 2							//'Pointer'
      &pushsdb 3							//'encode'
      &callMethod
      &return
    &end // of function GetPortraitHelpSite

    &function2 SetAmmo (r:4='newAmmoCapacityArg', r:3='newAmmoLoadArg') ()
      &pushregister 4
      &toNumber
      &setRegister r:1
      &pop
      &pushregister 3
      &toNumber
      &setRegister r:2
      &pop
      &pushregister 1
      &pushsdbgv 25							//'ammoCapacity'
      &equals
      &not
      &dup
      &jnz label5      
      &pop
      &pushregister 2
      &pushsdbgv 26							//'ammoLoad'
      &equals
      &not
     label5:
      &not
      &jnz label7      
      &pushsdb 25							//'ammoCapacity'
      &pushregister 1
      &setVariable
      &pushsdb 26							//'ammoLoad'
      &pushregister 2
      &setVariable
      &pushsdbgv 27							//'ammoDisplay'
      &pushundef
      &equals
      &not
      &dup
      &not
      &jnz label6      
      &pop
      &pushsdbgv 27							//'ammoDisplay'
      &pushsdbgm 28							//'initialized'
     label6:
      &not
      &jnz label7      
      &pushregister 1
      &pushone
      &pushsdbgv 27							//'ammoDisplay'
      &dcallmp 29							// SetCapacity()
      &pushregister 2
      &pushone
      &pushsdbgv 27							//'ammoDisplay'
      &dcallmp 30							// SetLoad()
     label7:
    &end // of function SetAmmo

    &function2 GetCommandButton (r:2='buttonName') ()
      &pushsdbgv 31							//'basicCommands'
      &pushregister 2
      &getMember
      &setRegister r:1
      &pop
      &pushregister 1
      &pushundef
      &equals
      &not
      &jnz label8      
      &pushsdbgv 32							//'advCommands'
      &pushsdbgm 33							//'panel'
      &pushregister 2
      &getMember
      &setRegister r:1
      &pop
     label8:
      &pushregister 1
      &pushone
      &pushsdbgv 2							//'Pointer'
      &pushsdb 3							//'encode'
      &callMethod
      &return
    &end // of function GetCommandButton

    &function2 SetInfiltrated (r:1='arg') ()
      &pushsdb 34							//'infiltrated'
      &pushregister 1
      &pushzero
      &equals
      &not
      &setVariable
      &pushsdbgv 35							//'infiltratedOverlay'
      &pushsdb 10							//'_visible'
      &pushsdbgv 34							//'infiltrated'
      &setMember
    &end // of function SetInfiltrated

    &function OpenAdvancedCommands (    )    
      &pushsdb 36							//'_open'
      &pushone
      &pushsdbgv 32							//'advCommands'
      &dcallmp 6							// gotoAndPlay()
    &end // of function OpenAdvancedCommands

    &function CloseAdvancedCommands (    )    
      &pushsdb 37							//'_close'
      &pushone
      &pushsdbgv 32							//'advCommands'
      &dcallmp 6							// gotoAndPlay()
    &end // of function CloseAdvancedCommands

    &function GetOpenAdvancedCommandsButtonHelpSite (    )    
      &pushsdbgv 24							//'portraitHelpSite'
      &pushone
      &pushsdbgv 2							//'Pointer'
      &pushsdb 3							//'encode'
      &callMethod
      &return
    &end // of function GetOpenAdvancedCommandsButtonHelpSite

    &function2 SetOpenAdvancedCommandsButtonEnabled (r:3='enableArg') ()
      &pushregister 3
      &pushzero
      &equals
      &not
      &setRegister r:1
      &pop
      &pushregister 1
      &pushsdbgv 38							//'openAdvancedCommandsButtonEnabled'
      &equals
      &not
      &not
      &jnz label12      
      &pushsdbgv 32							//'advCommands'
      &pushsdbgm 39							//'openAdvancedCommandsButton'
      &pushone
      &pushsdb 40							//'Color'
      &new
      &setRegister r:2
      &pop
      &pushregister 1
      &jnz label9      
      &pushlong 8355711
      &jmp label10      
     label9:
      &pushlong 16777215
     label10:
      &pushone
      &pushregister 2
      &dcallmp 41							// setRGB()
      &pushregister 1
      &not
      &not
      &jnz label11      
      &pushsdb 42							//'_up'
      &pushone
      &pushsdbgv 32							//'advCommands'
      &pushsdbgm 39							//'openAdvancedCommandsButton'
      &dcallmp 6							// gotoAndPlay()
     label11:
      &pushsdb 38							//'openAdvancedCommandsButtonEnabled'
      &pushregister 1
      &setVariable
     label12:
    &end // of function SetOpenAdvancedCommandsButtonEnabled

    &function2 SetOpenAdvancedCommandsButtonHighlighted (r:3='highlightArg') (r:1='_global')
      &pushregister 3
      &pushzero
      &equals
      &not
      &setRegister r:2
      &pop
      &pushregister 2
      &not
      &jnz label14      
      &pushsdbgv 43							//'openAdvancedCommandsHighlightClip'
      &pushundef
      &equals
      &not
      &jnz label13      
      &pushsdb 43							//'openAdvancedCommandsHighlightClip'
      &pushsdbgv 32							//'advCommands'
      &pushsdbgm 44							//'highlightDummy'
      &pushone
      &pushregister 1
      &dcallmsv 45							// CreateHUDGadgetFlash()
     label13:
      &jmp label15      
     label14:
      &pushsdbgv 43							//'openAdvancedCommandsHighlightClip'
      &pushundef
      &equals
      &not
      &not
      &jnz label15      
      &pushzero
      &pushsdbgv 43							//'openAdvancedCommandsHighlightClip'
      &dcallmp 46							// Close()
      &pushsdb 43							//'openAdvancedCommandsHighlightClip'
      &pushundef
      &setVariable
     label15:
    &end // of function SetOpenAdvancedCommandsButtonHighlighted

    &function onUnload (    )    
      &pushzero
      &pushsdbgv 43							//'openAdvancedCommandsHighlightClip'
      &dcallmp 46							// Close()
      &pushsdb 47							//'GetAbilityButtonStage'
      &delete2
      &pop
      &pushsdb 48							//'SetState'
      &delete2
      &pop
      &pushsdb 49							//'SetUnitCategory'
      &delete2
      &pop
      &pushsdb 50							//'SetWeaponCategory'
      &delete2
      &pop
      &pushsdb 51							//'SetOreRemainingVisible'
      &delete2
      &pop
      &pushsdb 52							//'SetRank'
      &delete2
      &pop
      &pushsdb 53							//'SetHealth'
      &delete2
      &pop
      &pushsdb 54							//'GetUpgradeIconList'
      &delete2
      &pop
      &pushsdb 55							//'GetPortraitHelpSite'
      &delete2
      &pop
      &pushsdb 56							//'SetLargeBarVisibility'
      &delete2
      &pop
      &pushsdb 57							//'SetAmmo'
      &delete2
      &pop
      &pushsdb 58							//'GetCommandButton'
      &delete2
      &pop
      &pushsdb 59							//'SetInfiltrated'
      &delete2
      &pop
      &pushsdb 60							//'OpenAdvancedCommands'
      &delete2
      &pop
      &pushsdb 61							//'CloseAdvancedCommands'
      &delete2
      &pop
      &pushsdb 62							//'GetOpenAdvancedCommandsButtonHelpSite'
      &delete2
      &pop
      &pushsdb 63							//'SetOpenAdvancedCommandsButtonEnabled'
      &delete2
      &pop
      &pushsdb 64							//'SetOpenAdvancedCommandsButtonHighlighted'
      &delete2
      &pop
      &pushsdb 65							//'onUnload'
      &delete2
      &pop
    &end // of function onUnload

    &pushsdbgv 28							//'initialized'
    &not
    &not
    &jnz label16    
    &pushsdb 4							//'unitCategory'
    &pushsdb 66							//'_hide'
    &setVariable
    &pushsdb 7							//'weaponCategory'
    &pushsdb 66							//'_hide'
    &setVariable
    &pushsdb 11							//'rank'
    &pushone
    &setVariable
    &pushsdb 20							//'healthPct'
    &pushbyte 100
    &setVariable
    &pushsdb 25							//'ammoCapacity'
    &pushzerosv
    &pushsdb 26							//'ammoLoad'
    &pushzerosv
    &pushsdb 34							//'infiltrated'
    &pushfalse
    &setVariable
    &pushsdbgv 9							//'oreRemaining'
    &pushsdb 10							//'_visible'
    &pushfalse
    &setMember
    &pushsdb 38							//'openAdvancedCommandsButtonEnabled'
    &pushtrue
    &setVariable
    &pushsdb 28							//'initialized'
    &pushtrue
    &setVariable
    &pushsdb 67							//'FSCommand:'
    &pushsdb 68							//'OnInitialized'
    &pushthisgv
    &pushbyte 2
    &pushsdb 70							//'qualifyName'
    &callFunction
    &concat
    &pushsdb 71							//''
    &getURL2
    &pushsdbgv 72							//'extern'
    &pushsdbgm 73							//'InGame'
    &not
    &not
    &jnz label16    
    &gotoLabel '_singleUnit'
    &play
    &pushsdb 74							//'_infantry'
    &pushone
    &dcallfp 49							// SetUnitCategory()
    &pushsdb 75							//'_gun'
    &pushone
    &dcallfp 50							// SetWeaponCategory()
    &pushbyte 70
    &pushbyte 50
    &pushbyte 2
    &dcallfp 76							// SetUnitHealth()
    &pushbyte 5
    &pushzero
    &pushbyte 2
    &dcallfp 57							// SetAmmo()
    &pushsdb 20							//'healthPct'
    &pushbyte 100
    &random
    &setVariable
   label16:
  &end // of frame 0
  
  &importAssets &from 'HelpBox.swf'
    'HelpBoxSite' &as 220
  &end // of importAssets

  &placeMovieClip 220 &as 'portraitHelpSite'
  
    &onClipEvent &construct
      &pushs 'vertAlignment'
      &pushssv 'bottom'
      &pushs 'horzAlignment'
      &pushssv 'right'
    &end
  &end // of placeMovieClip 220

  &defineMovieClip 229 // total frames: 30

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
  &end // of defineMovieClip 229

  &defineButton 231
  
    &on     &overUpToOverDown
      &pushsgv 'isEnabled'
      &not
      &jnz label1      
      &pushs '_down'
      &pushone
      &pushs 'SetState'
      &callfp
     label1:
    &end
  
    &on     &overDownToOverUp
      &pushsgv 'isEnabled'
      &not
      &jnz label1      
      &pushs '_over'
      &pushone
      &pushs 'SetState'
      &callfp
      &pushzero
      &pushs 'TriggerGlow'
      &callfp
     label1:
      &pushs 'FSCommand:'
      &pushs 'OnClicked'
      &pushthisgv
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &concat
      &pushs ''
      &getURL2
    &end
  
    &on     &idleToOverUp
      &pushsgv 'isEnabled'
      &not
      &jnz label1      
      &pushs '_over'
      &pushone
      &pushs 'SetState'
      &callfp
     label1:
      &pushs 'FSCommand:'
      &pushs 'OnRollOver'
      &pushthisgv
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &concat
      &pushs ''
      &getURL2
    &end
  
    &on     &overUpToIdle
      &pushsgv 'isEnabled'
      &not
      &jnz label1      
      &pushs '_up'
      &pushone
      &pushs 'SetState'
      &callfp
     label1:
      &pushs 'FSCommand:'
      &pushs 'OnRollOut'
      &pushthisgv
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &concat
      &pushs ''
      &getURL2
    &end
  &end // of defineButton 231

  &defineMovieClip 233 // total frames: 1
  &end // of defineMovieClip 233

  &defineMovieClip 234 // total frames: 1
  &end // of defineMovieClip 234

  &defineMovieClip 235 // total frames: 1

    &frame 0
      &constants 'imageStage', 'clip', 'gotoAndPlay', 'backgroundStage', 'currentStateLabel', 'isEnabled', '_disabled', '_up', 'stageClip >> ', ' : prefix >> ', 'length', 'removeMovieClip', 'isSelected', 'Normal', 'Highlighted', 'attachMovie', 'imageClip', 'ReattachContent', 'backgroundClip', '', 'highlightClip', 'CreateHUDGadgetFlash', 'Close', 'helpSite', 'Pointer', 'encode', 'SetState', 'SetEnabled', 'SetSelected', 'SetVisibility', 'SetHighlighted', 'GetHelpSite', 'onUnload', 'initialized', 'client', '_parent', 'FSCommand:', 'OnInitialized', 'this', 'qualifyName', 'extern', 'InGame'  
      &function2 SetState (r:1='stateLabel') ()
        &pushregister 1
        &pushone
        &pushsdbgv 0							//'imageStage'
        &pushsdbgm 1							//'clip'
        &dcallmp 2							// gotoAndPlay()
        &pushregister 1
        &pushone
        &pushsdbgv 3							//'backgroundStage'
        &pushsdbgm 1							//'clip'
        &dcallmp 2							// gotoAndPlay()
        &pushsdb 4							//'currentStateLabel'
        &pushregister 1
        &setVariable
      &end // of function SetState

      &function2 SetEnabled (r:2='enableArg') ()
        &pushregister 2
        &toNumber
        &pushzero
        &equals
        &not
        &setRegister r:1
        &pop
        &pushregister 1
        &pushsdbgv 5							//'isEnabled'
        &equals
        &not
        &not
        &jnz label3        
        &pushsdb 5							//'isEnabled'
        &pushregister 1
        &setVariable
        &pushsdb 4							//'currentStateLabel'
        &pushsdbgv 5							//'isEnabled'
        &jnz label1        
        &pushsdb 6							//'_disabled'
        &jmp label2        
       label1:
        &pushsdb 7							//'_up'
       label2:
        &setVariable
        &pushsdbgv 4							//'currentStateLabel'
        &pushone
        &pushsdbgv 0							//'imageStage'
        &pushsdbgm 1							//'clip'
        &dcallmp 2							// gotoAndPlay()
        &pushsdbgv 4							//'currentStateLabel'
        &pushone
        &pushsdbgv 3							//'backgroundStage'
        &pushsdbgm 1							//'clip'
        &dcallmp 2							// gotoAndPlay()
       label3:
      &end // of function SetEnabled

      &function2 ReattachContent (r:4='stageClip', r:2='prefix') ()
        &pushsdb 8							//'stageClip >> '
        &pushregister 4
        &add
        &pushsdb 9							//' : prefix >> '
        &add
        &pushregister 2
        &add
        &trace
        &pushregister 2
        &pushundef
        &equals
        &dup
        &jnz label4        
        &pop
        &pushregister 2
        &pushsdbgm 10							//'length'
        &pushzero
        &greaterThan
        &not
       label4:
        &not
        &jnz label5        
        &pushundef
        &return
       label5:
        &pushregister 4
        &pushsdbgm 1							//'clip'
        &setRegister r:1
        &pop
        &pushregister 1
        &pushundef
        &equals
        &not
        &not
        &jnz label6        
        &pushzero
        &pushregister 1
        &dcallmp 11							// removeMovieClip()
       label6:
        &pushregister 2
        &pushsdbgv 12							//'isSelected'
        &jnz label7        
        &pushsdb 13							//'Normal'
        &jmp label8        
       label7:
        &pushsdb 14							//'Highlighted'
       label8:
        &add
        &setRegister r:3
        &pop
        &pushzero
        &pushsdb 1							//'clip'
        &pushregister 3
        &pushbyte 3
        &pushregister 4
        &pushsdb 15							//'attachMovie'
        &callMethod
        &setRegister r:1
        &pop
        &pushsdbgv 4							//'currentStateLabel'
        &pushone
        &pushregister 1
        &dcallmp 2							// gotoAndPlay()
      &end // of function ReattachContent

      &function2 SetSelected (r:2='selectedArg') ()
        &pushregister 2
        &toNumber
        &pushzero
        &equals
        &not
        &setRegister r:1
        &pop
        &pushregister 1
        &pushsdbgv 12							//'isSelected'
        &equals
        &not
        &not
        &jnz label9        
        &pushsdb 12							//'isSelected'
        &pushregister 1
        &setVariable
        &pushsdbgv 16							//'imageClip'
        &pushsdbgv 0							//'imageStage'
        &pushbyte 2
        &dcallfp 17							// ReattachContent()
        &pushsdbgv 18							//'backgroundClip'
        &pushsdbgv 3							//'backgroundStage'
        &pushbyte 2
        &dcallfp 17							// ReattachContent()
       label9:
      &end // of function SetSelected

      &function2 SetVisibility (r:2='visArg') ()
        &pushregister 2
        &toNumber
        &pushzero
        &equals
        &not
        &setRegister r:1
        &pop
        &pushsdb 19							//''
        &pushbyte 7
        &pushregister 1
        &setProperty
      &end // of function SetVisibility

      &function2 SetHighlighted (r:4='highlightArg') (r:1='this', r:2='_global')
        &pushregister 4
        &pushzero
        &equals
        &not
        &setRegister r:3
        &pop
        &pushregister 3
        &not
        &jnz label11        
        &pushsdbgv 20							//'highlightClip'
        &pushundef
        &equals
        &not
        &jnz label10        
        &pushsdb 20							//'highlightClip'
        &pushregister 1
        &pushone
        &pushregister 2
        &dcallmsv 21							// CreateHUDGadgetFlash()
       label10:
        &jmp label12        
       label11:
        &pushsdbgv 20							//'highlightClip'
        &pushundef
        &equals
        &not
        &not
        &jnz label12        
        &pushzero
        &pushsdbgv 20							//'highlightClip'
        &dcallmp 22							// Close()
        &pushsdb 20							//'highlightClip'
        &pushundef
        &setVariable
       label12:
      &end // of function SetHighlighted

      &function GetHelpSite (      )      
        &pushsdbgv 23							//'helpSite'
        &pushone
        &pushsdbgv 24							//'Pointer'
        &pushsdb 25							//'encode'
        &callMethod
        &return
      &end // of function GetHelpSite

      &function onUnload (      )      
        &pushzero
        &pushsdbgv 20							//'highlightClip'
        &dcallmp 22							// Close()
        &pushsdb 26							//'SetState'
        &delete2
        &pop
        &pushsdb 27							//'SetEnabled'
        &delete2
        &pop
        &pushsdb 17							//'ReattachContent'
        &delete2
        &pop
        &pushsdb 28							//'SetSelected'
        &delete2
        &pop
        &pushsdb 29							//'SetVisibility'
        &delete2
        &pop
        &pushsdb 30							//'SetHighlighted'
        &delete2
        &pop
        &pushsdb 31							//'GetHelpSite'
        &delete2
        &pop
        &pushsdb 32							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 33							//'initialized'
      &not
      &not
      &jnz label14      
      &pushsdbgv 34							//'client'
      &pushundef
      &equals
      &not
      &jnz label13      
      &pushsdb 34							//'client'
      &pushsdbgv 35							//'_parent'
      &setVariable
     label13:
      &pushsdb 4							//'currentStateLabel'
      &pushsdb 6							//'_disabled'
      &setVariable
      &pushsdb 5							//'isEnabled'
      &pushfalse
      &setVariable
      &pushsdb 12							//'isSelected'
      &pushfalse
      &setVariable
      &pushone
      &pushone
      &dcallfp 27							// SetEnabled()
      &pushsdb 33							//'initialized'
      &pushtrue
      &setVariable
      &pushsdb 36							//'FSCommand:'
      &pushsdb 37							//'OnInitialized'
      &pushthisgv
      &pushbyte 2
      &pushsdb 39							//'qualifyName'
      &callFunction
      &concat
      &pushsdb 19							//''
      &getURL2
      &pushsdbgv 40							//'extern'
      &pushsdbgm 41							//'InGame'
      &not
      &not
      &jnz label14      
      &pushzero
      &pushone
      &dcallfp 27							// SetEnabled()
     label14:
    &end // of frame 0

    &placeMovieClip 233 
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 233

    &placeMovieClip 234 &as 'backgroundStage'
    
      &onClipEvent &load
        &constants '_parent', 'backgroundClip', 'length', 'clip', 'isSelected', 'Normal', 'Highlighted', 'this', 'attachMovie', 'currentStateLabel', 'gotoAndPlay'  
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 1							//'backgroundClip'
        &pushundef
        &equals
        &not
        &dup
        &not
        &jnz label1        
        &pop
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 1							//'backgroundClip'
        &pushsdbgm 2							//'length'
        &pushzero
        &greaterThan
       label1:
        &not
        &jnz label4        
        &pushsdb 3							//'clip'
        &pushzero
        &pushsdb 3							//'clip'
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 1							//'backgroundClip'
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 4							//'isSelected'
        &jnz label2        
        &pushsdb 5							//'Normal'
        &jmp label3        
       label2:
        &pushsdb 6							//'Highlighted'
       label3:
        &add
        &pushbyte 3
        &pushthisgv
        &pushsdb 8							//'attachMovie'
        &callMethod
        &varEquals
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 9							//'currentStateLabel'
        &pushone
        &pushsdbgv 3							//'clip'
        &dcallmp 10							// gotoAndPlay()
       label4:
      &end
    &end // of placeMovieClip 234

    &placeMovieClip 234 &as 'imageStage'
    
      &onClipEvent &load
        &constants '_parent', 'imageClip', 'length', 'clip', 'isSelected', 'Normal', 'Highlighted', 'this', 'attachMovie', 'currentStateLabel', 'gotoAndPlay'  
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 1							//'imageClip'
        &pushundef
        &equals
        &not
        &dup
        &not
        &jnz label1        
        &pop
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 1							//'imageClip'
        &pushsdbgm 2							//'length'
        &pushzero
        &greaterThan
       label1:
        &not
        &jnz label4        
        &pushsdb 3							//'clip'
        &pushzero
        &pushsdb 3							//'clip'
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 1							//'imageClip'
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 4							//'isSelected'
        &jnz label2        
        &pushsdb 5							//'Normal'
        &jmp label3        
       label2:
        &pushsdb 6							//'Highlighted'
       label3:
        &add
        &pushbyte 3
        &pushthisgv
        &pushsdb 8							//'attachMovie'
        &callMethod
        &varEquals
        &pushsdbgv 0							//'_parent'
        &pushsdbgm 9							//'currentStateLabel'
        &pushone
        &pushsdbgv 3							//'clip'
        &dcallmp 10							// gotoAndPlay()
       label4:
      &end
    &end // of placeMovieClip 234
  &end // of defineMovieClip 235

  &defineMovieClip 236 // total frames: 1

    &frame 0
      &constants 'waypointModeButton', 'helpSite', '_parent', 'portraitHelpSite', 'planningModeButton', 'forceAttackMoveButton', 'forceMoveButton', 'stopButton', 'aggressiveStanceButton', 'holdFireStanceButton', 'guardStanceButton', 'holdGroundStanceButton'  
      &pushsdbgv 0							//'waypointModeButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 4							//'planningModeButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 5							//'forceAttackMoveButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 6							//'forceMoveButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 7							//'stopButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 8							//'aggressiveStanceButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 9							//'holdFireStanceButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 10							//'guardStanceButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 11							//'holdGroundStanceButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
    &end // of frame 0

    &placeMovieClip 235 &as 'holdFireStanceButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'StanceHoldFire'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'holdGroundStanceButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'StanceHoldGround'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'guardStanceButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'StanceGuard'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'aggressiveStanceButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'StanceAggressive'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'stopButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'Stop'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'forceMoveButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'ForceMove'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'planningModeButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'PlanningMode'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'waypointModeButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'WaypointMode'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235
  &end // of defineMovieClip 236

  &defineButton 237
  
    &on     &overDownToOverUp
      &pushzero
      &pushsgv '_parent'
      &pushs 'OnOpenButtonClicked'
      &callmp
    &end
  
    &on     &idleToOverUp
      &constants '_parent', 'OnRollOverOpenButton', 'openAdvancedCommandsButtonEnabled'  
      &pushzero
      &pushsdbgv 0							//'_parent'
      &dcallmp 1							// OnRollOverOpenButton()
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 0							//'_parent'
      &pushsdbgm 2							//'openAdvancedCommandsButtonEnabled'
      &not
      &jnz label1      
      &gotoLabel '_over'
      &play
     label1:
    &end
  
    &on     &overUpToIdle
      &constants '_parent', 'OnRollOutOpenButton', 'openAdvancedCommandsButtonEnabled'  
      &pushzero
      &pushsdbgv 0							//'_parent'
      &dcallmp 1							// OnRollOutOpenButton()
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 0							//'_parent'
      &pushsdbgm 2							//'openAdvancedCommandsButtonEnabled'
      &not
      &jnz label1      
      &gotoLabel '_up'
      &play
     label1:
    &end
  &end // of defineButton 237

  &defineMovieClip 244 // total frames: 30

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
  &end // of defineMovieClip 244

  &defineMovieClip 247 // total frames: 20

    &frame 9
      &stop
    &end // of frame 9

    &frame 19
      &stop
    &end // of frame 19
  &end // of defineMovieClip 247
  
  &importAssets &from '../../common/hud/ig_libHUD.swf'
    'WhiteRectangle' &as 248
  &end // of importAssets

  &defineMovieClip 255 // total frames: 30

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
  &end // of defineMovieClip 255

  &defineMovieClip 256 // total frames: 20

    &frame 9
      &stop
    &end // of frame 9

    &frame 19
      &stop
    &end // of frame 19
  &end // of defineMovieClip 256

  &defineMovieClip 257 // total frames: 21

    &frame 0
      &constants 'FSCommand:', 'OnOpenAdvancedCommandsClicked', 'qualifyName', '', 'mouseOverOpenButton', 'OnRollOverOpenAdvancedCommandsButton', 'OnRollOutOpenAdvancedCommandsButton', 'OnOpenButtonClicked', 'OnRollOverOpenButton', 'OnRollOutOpenButton', 'onUnload', 'initialized'  
      &function2 OnOpenButtonClicked () (r:1='_parent', r:2='_global')
        &pushsdb 0							//'FSCommand:'
        &pushsdb 1							//'OnOpenAdvancedCommandsClicked'
        &pushregister 1
        &pushbyte 2
        &pushregister 2
        &pushsdb 2							//'qualifyName'
        &callMethod
        &concat
        &pushsdb 3							//''
        &getURL2
      &end // of function OnOpenButtonClicked

      &function2 OnRollOverOpenButton () (r:1='_parent', r:2='_global')
        &pushsdbgv 4							//'mouseOverOpenButton'
        &not
        &not
        &jnz label1        
        &pushsdb 4							//'mouseOverOpenButton'
        &pushtrue
        &setVariable
        &pushsdb 0							//'FSCommand:'
        &pushsdb 5							//'OnRollOverOpenAdvancedCommandsButton'
        &pushregister 1
        &pushbyte 2
        &pushregister 2
        &pushsdb 2							//'qualifyName'
        &callMethod
        &concat
        &pushsdb 3							//''
        &getURL2
       label1:
      &end // of function OnRollOverOpenButton

      &function2 OnRollOutOpenButton () (r:1='_parent', r:2='_global')
        &pushsdbgv 4							//'mouseOverOpenButton'
        &not
        &jnz label2        
        &pushsdb 4							//'mouseOverOpenButton'
        &pushfalse
        &setVariable
        &pushsdb 0							//'FSCommand:'
        &pushsdb 6							//'OnRollOutOpenAdvancedCommandsButton'
        &pushregister 1
        &pushbyte 2
        &pushregister 2
        &pushsdb 2							//'qualifyName'
        &callMethod
        &concat
        &pushsdb 3							//''
        &getURL2
       label2:
      &end // of function OnRollOutOpenButton

      &function onUnload (      )      
        &pushsdb 7							//'OnOpenButtonClicked'
        &delete2
        &pop
        &pushsdb 8							//'OnRollOverOpenButton'
        &delete2
        &pop
        &pushsdb 9							//'OnRollOutOpenButton'
        &delete2
        &pop
        &pushsdb 10							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 11							//'initialized'
      &not
      &not
      &jnz label3      
      &pushsdb 4							//'mouseOverOpenButton'
      &pushfalse
      &setVariable
      &pushsdb 11							//'initialized'
      &pushtrue
      &setVariable
     label3:
    &end // of frame 0

    &frame 0
      &stop
    &end // of frame 0

    &frame 1
      &pushzero
      &pushs 'OnRollOutOpenButton'
      &callfp
    &end // of frame 1

    &frame 10
      &stop
      &pushs 'FSCommand:'
      &pushs 'OnAdvancedCommandsOpen'
      &pushsgv '_parent'
      &pushbyte 2
      &pushglobalgv
      &pushs 'qualifyName'
      &callMethod
      &concat
      &pushs ''
      &getURL2
    &end // of frame 10

    &frame 20
      &pushzero
      &pushs 'OnRollOutOpenButton'
      &callfp
      &gotoLabel '_closed'
      &play
      &pushs 'FSCommand:'
      &pushs 'OnAdvancedCommandsClosed'
      &pushsgv '_parent'
      &pushbyte 2
      &pushglobalgv
      &pushs 'qualifyName'
      &callMethod
      &concat
      &pushs ''
      &getURL2
    &end // of frame 20
  &end // of defineMovieClip 257

  &defineMovieClip 264 // total frames: 30

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
  &end // of defineMovieClip 264

  &defineMovieClip 271 // total frames: 30

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
  &end // of defineMovieClip 271

  &defineMovieClip 272 // total frames: 1

    &frame 0
      &constants 'forceAttackButton', 'helpSite', '_parent', 'portraitHelpSite', 'attackMoveButton', 'reverseMoveButton', 'unitIntroButton'  
      &pushsdbgv 0							//'forceAttackButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 4							//'attackMoveButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 5							//'reverseMoveButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
      &pushsdbgv 6							//'unitIntroButton'
      &pushsdb 1							//'helpSite'
      &pushsdbgv 2							//'_parent'
      &pushsdbgm 3							//'portraitHelpSite'
      &setMember
    &end // of frame 0

    &placeMovieClip 235 &as 'unitIntroButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'AssaultMove'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'reverseMoveButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'ReverseMove'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'attackMoveButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'AttackMove'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235

    &placeMovieClip 235 &as 'forceAttackButton'
    
      &onClipEvent &construct
        &pushs 'imageClip'
        &pushssv 'ForceAttack'
        &pushs 'backgroundClip'
        &pushssv ''
      &end
    &end // of placeMovieClip 235
  &end // of defineMovieClip 272

  &defineMovieClip 275 // total frames: 2

    &frame 0
      &gotoFrame 1
      &play
    &end // of frame 0

    &frame 1
      &stop
    &end // of frame 1
  &end // of defineMovieClip 275

  &placeMovieClip 275 &as 'oreRemaining'
  
    &onClipEvent &load
      &pushs 'oreRemainingText'
      &pushs '$'
      &pushs 'OreRemaining'
      &pushsgv '_parent'
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &add
      &pushs '&outline'
      &add
      &setVariable
    &end
  &end // of placeMovieClip 275
  
  &importAssets &from '../../common/hud/ig_libHUD.swf'
    'LoadMovieStage' &as 276
  &end // of importAssets

  &defineMovieClip 277 // total frames: 1

    &placeMovieClip 248 
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 248
  &end // of defineMovieClip 277

  &defineMovieClip 278 // total frames: 1

    &frame 0
      &constants 'initialized', 'i', 'this', 'stage', 'helpSite'  
      &pushsdbgv 0							//'initialized'
      &not
      &not
      &jnz label3      
      &pushsdb 1							//'i'
      &pushzero
      &varEquals
     label1:
      &pushsdbgv 1							//'i'
      &pushone
      &lessThan
      &not
      &jnz label2      
      &pushthisgv
      &pushsdbgv 1							//'i'
      &toString
      &getMember
      &pushsdbgm 3							//'stage'
      &pushsdb 4							//'helpSite'
      &pushthisgv
      &pushsdb 4							//'helpSite'
      &pushsdbgv 1							//'i'
      &toString
      &add
      &getMember
      &setMember
      &pushsdb 1							//'i'
      &pushsdbgv 1							//'i'
      &increment
      &setVariable
      &jmp label1      
     label2:
      &pushsdb 0							//'initialized'
      &pushtrue
      &setVariable
     label3:
      &stop
    &end // of frame 0

    &placeMovieClip 220 &as 'helpSite0'
    
      &onClipEvent &construct
        &pushs 'vertAlignment'
        &pushssv 'bottom'
        &pushs 'horzAlignment'
        &pushssv 'right'
      &end
    &end // of placeMovieClip 220
  &end // of defineMovieClip 278

  &frame 9
    &stop
  &end // of frame 9

  &defineMovieClip 281 // total frames: 2

    &frame 0
      &gotoFrame 1
      &play
    &end // of frame 0

    &frame 1
      &stop
    &end // of frame 1
  &end // of defineMovieClip 281

  &placeMovieClip 281 
  
    &onClipEvent &load
      &pushs 'unitNameText'
      &pushs '$'
      &pushs 'UnitName'
      &pushsgv '_parent'
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &add
      &pushs '&outline'
      &add
      &setVariable
    &end
  &end // of placeMovieClip 281

  &defineButton 282
  
    &on     &idleToOverUp
      &pushs 'FSCommand:'
      &pushs 'OnPortraitRollOver'
      &pushsgv '_parent'
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &concat
      &pushs ''
      &getURL2
    &end
  
    &on     &overUpToIdle
      &pushs 'FSCommand:'
      &pushs 'OnPortraitRollOut'
      &pushsgv '_parent'
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &concat
      &pushs ''
      &getURL2
    &end
  
    &on     &overDownToOverUp
      &pushs 'FSCommand:'
      &pushs 'OnPortraitRelease'
      &pushsgv '_parent'
      &pushbyte 2
      &pushs 'qualifyName'
      &callFunction
      &concat
      &pushs ''
      &getURL2
    &end
  &end // of defineButton 282
  
  &importAssets &from '../../common/hud/ig_libHUD.swf'
    'RenderImage' &as 283
  &end // of importAssets

  &defineMovieClip 284 // total frames: 2

    &placeMovieClip 283 
    
      &onClipEvent &construct
        &constants '_type', 'RenderImage', '_imageMap', '', '_mode'  
        &pushsdb 0							//'_type'
        &pushsdb 1							//'RenderImage'
        &setVariable
        &pushsdb 2							//'_imageMap'
        &pushsdb 3							//''
        &setVariable
        &pushsdb 4							//'_mode'
        &pushsdb 3							//''
        &setVariable
      &end
    
      &onClipEvent &load
        &constants '_imageMap', 'Portrait', '_parent', 'qualifyName'  
        &pushsdb 0							//'_imageMap'
        &pushsdb 1							//'Portrait'
        &pushsdbgv 2							//'_parent'
        &pushsdbgm 2							//'_parent'
        &pushbyte 2
        &dcallfsv 3							// qualifyName()
      &end
    &end // of placeMovieClip 283
  &end // of defineMovieClip 284

  &defineMovieClip 287 // total frames: 1
  &end // of defineMovieClip 287

  &placeMovieClip 287 &as 'infiltratedOverlay'
  
    &onClipEvent &load
      &pushs ''
      &pushbyte 7
      &pushsgv '_parent'
      &pushsgm 'infiltrated'
      &setProperty
    &end
  &end // of placeMovieClip 287

  &defineMovieClip 292 // total frames: 1
  &end // of defineMovieClip 292

  &defineMovieClip 295 // total frames: 101

    &frame 0
      &stop
    &end // of frame 0

    &placeMovieClip 292 
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 292
  &end // of defineMovieClip 295

  &placeMovieClip 295 &as 'healthBar'
  
    &onClipEvent &load
      &constants '_parent', 'healthPct', 'vFrame', 'this', 'gotoAndStop'  
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 1							//'healthPct'
      &pushundef
      &equals
      &not
      &not
      &jnz label1      
      &pushsdb 2							//'vFrame'
      &pushsdbgv 0							//'_parent'
      &pushsdbgm 1							//'healthPct'
      &pushone
      &add
      &varEquals
      &pushsdbgv 2							//'vFrame'
      &pushone
      &pushthisgv
      &dcallmp 4							// gotoAndStop()
     label1:
    &end
  &end // of placeMovieClip 295

  &defineMovieClip 296 // total frames: 101

    &frame 0
      &stop
    &end // of frame 0

    &placeMovieClip 292 
    
      &onClipEvent &load
        &pushs ''
        &pushbyte 7
        &pushfalse
        &setProperty
      &end
    &end // of placeMovieClip 292
  &end // of defineMovieClip 296

  &defineMovieClip 297 // total frames: 1

    &frame 0
      &constants 'pipCount', '_x', '_width', 'AmmoPip', 'attachMovie', '_y', 'currentLoad', '_empty', '_filled', 'gotoAndPlay', 'removeMovieClip', 'maxPipCount', 'ammoBar', '_visible', 'ammoBarBG', 'SetPipCount', 'currentCapacity', 'Math', 'min', 'gotoAndStop', 'SetCapacity', 'SetLoad', 'onUnload', 'initialized', '_parent', 'ammoCapacity', 'ammoLoad'  
      &function2 SetPipCount (r:5='newPipCount') (r:1='this')
        &pushregister 5
        &pushsdbgv 0							//'pipCount'
        &greaterThan
        &not
        &jnz label7        
        &pushundef
        &setRegister r:6
        &pop
        &pushsdbgv 0							//'pipCount'
        &pushzero
        &greaterThan
        &not
        &jnz label1        
        &pushregister 1
        &pushsdbgv 0							//'pipCount'
        &pushone
        &subtract
        &toString
        &getMember
        &setRegister r:7
        &pop
        &pushregister 7
        &pushsdbgm 1							//'_x'
        &pushregister 7
        &pushsdbgm 2							//'_width'
        &add
        &pushone
        &add
        &setRegister r:6
        &pop
        &jmp label2        
       label1:
        &pushzero
        &setRegister r:6
        &pop
       label2:
        &pushsdbgv 0							//'pipCount'
        &setRegister r:3
        &pop
       label3:
        &pushregister 3
        &pushregister 5
        &lessThan
        &not
        &jnz label6        
        &pushregister 3
        &pushregister 3
        &toString
        &pushsdb 3							//'AmmoPip'
        &pushbyte 3
        &pushregister 1
        &pushsdb 4							//'attachMovie'
        &callMethod
        &setRegister r:2
        &pop
        &pushregister 2
        &pushsdb 1							//'_x'
        &pushregister 6
        &setMember
        &pushregister 2
        &pushsdb 5							//'_y'
        &pushzero
        &setMember
        &pushregister 3
        &pushsdbgv 6							//'currentLoad'
        &lessThan
        &jnz label4        
        &pushsdb 7							//'_empty'
        &jmp label5        
       label4:
        &pushsdb 8							//'_filled'
       label5:
        &pushone
        &pushregister 2
        &dcallmp 9							// gotoAndPlay()
        &pushregister 6
        &pushregister 2
        &pushsdbgm 2							//'_width'
        &pushone
        &add
        &add
        &setRegister r:6
        &pop
        &pushregister 3
        &increment
        &setRegister r:3
        &pop
        &jmp label3        
       label6:
        &jmp label9        
       label7:
        &pushregister 5
        &pushsdbgv 0							//'pipCount'
        &lessThan
        &not
        &jnz label9        
        &pushsdbgv 0							//'pipCount'
        &setRegister r:3
        &pop
       label8:
        &pushregister 3
        &decrement
        &setRegister r:3
        &pop
        &pushregister 1
        &pushregister 3
        &toString
        &getMember
        &setRegister r:4
        &pop
        &pushzero
        &pushregister 4
        &dcallmp 10							// removeMovieClip()
        &pushregister 3
        &pushregister 5
        &greaterThan
        &jnz label8        
       label9:
        &pushsdb 0							//'pipCount'
        &pushregister 5
        &setVariable
      &end // of function SetPipCount

      &function2 SetCapacity (r:2='ammoCapacity') ()
        &pushregister 2
        &pushsdbgv 11							//'maxPipCount'
        &greaterThan
        &not
        &setRegister r:1
        &pop
        &pushsdbgv 12							//'ammoBar'
        &pushsdb 13							//'_visible'
        &pushregister 1
        &not
        &setMember
        &pushsdbgv 14							//'ammoBarBG'
        &pushsdb 13							//'_visible'
        &pushregister 1
        &not
        &setMember
        &pushregister 1
        &jnz label10        
        &pushzero
        &jmp label11        
       label10:
        &pushregister 2
       label11:
        &pushone
        &dcallfp 15							// SetPipCount()
        &pushsdb 16							//'currentCapacity'
        &pushregister 2
        &setVariable
      &end // of function SetCapacity

      &function2 SetLoad (r:4='ammoLoad') (r:1='this')
        &pushsdbgv 16							//'currentCapacity'
        &pushsdbgv 11							//'maxPipCount'
        &greaterThan
        &not
        &setRegister r:7
        &pop
        &pushregister 7
        &not
        &jnz label16        
        &pushregister 4
        &pushsdbgv 6							//'currentLoad'
        &greaterThan
        &not
        &jnz label14        
        &pushsdbgv 6							//'currentLoad'
        &pushsdbgv 0							//'pipCount'
        &lessThan
        &not
        &jnz label13        
        &pushsdbgv 0							//'pipCount'
        &pushregister 4
        &pushbyte 2
        &pushsdbgv 17							//'Math'
        &pushsdb 18							//'min'
        &callMethod
        &setRegister r:5
        &pop
        &pushsdbgv 6							//'currentLoad'
        &setRegister r:2
        &pop
       label12:
        &pushregister 2
        &pushregister 5
        &lessThan
        &not
        &jnz label13        
        &pushregister 1
        &pushregister 2
        &toString
        &getMember
        &setRegister r:3
        &pop
        &pushsdb 8							//'_filled'
        &pushone
        &pushregister 3
        &dcallmp 9							// gotoAndPlay()
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label12        
       label13:
        &jmp label16        
       label14:
        &pushregister 4
        &pushsdbgv 6							//'currentLoad'
        &lessThan
        &not
        &jnz label16        
        &pushregister 4
        &pushsdbgv 0							//'pipCount'
        &lessThan
        &not
        &jnz label16        
        &pushsdbgv 0							//'pipCount'
        &pushsdbgv 6							//'currentLoad'
        &pushbyte 2
        &pushsdbgv 17							//'Math'
        &pushsdb 18							//'min'
        &callMethod
        &setRegister r:5
        &pop
        &pushregister 4
        &setRegister r:2
        &pop
       label15:
        &pushregister 2
        &pushregister 5
        &lessThan
        &not
        &jnz label16        
        &pushregister 1
        &pushregister 2
        &toString
        &getMember
        &setRegister r:3
        &pop
        &pushsdb 7							//'_empty'
        &pushone
        &pushregister 3
        &dcallmp 9							// gotoAndPlay()
        &pushregister 2
        &increment
        &setRegister r:2
        &pop
        &jmp label15        
       label16:
        &pushundef
        &setRegister r:6
        &pop
        &pushsdbgv 16							//'currentCapacity'
        &pushzero
        &equals
        &not
        &not
        &jnz label17        
        &pushregister 4
        &pushsdbgv 16							//'currentCapacity'
        &divide
        &pushbyte 100
        &multiply
        &setRegister r:6
        &pop
        &jmp label18        
       label17:
        &pushzero
        &setRegister r:6
        &pop
       label18:
        &pushregister 6
        &pushone
        &add
        &pushone
        &pushsdbgv 12							//'ammoBar'
        &dcallmp 19							// gotoAndStop()
        &pushsdb 6							//'currentLoad'
        &pushregister 4
        &setVariable
      &end // of function SetLoad

      &function onUnload (      )      
        &pushsdb 15							//'SetPipCount'
        &delete2
        &pop
        &pushsdb 20							//'SetCapacity'
        &delete2
        &pop
        &pushsdb 21							//'SetLoad'
        &delete2
        &pop
        &pushsdb 22							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 23							//'initialized'
      &not
      &not
      &jnz label19      
      &pushsdb 11							//'maxPipCount'
      &pushbyte 10
      &setVariable
      &pushsdb 0							//'pipCount'
      &pushzerosv
      &pushsdb 16							//'currentCapacity'
      &pushzerosv
      &pushsdb 6							//'currentLoad'
      &pushzerosv
      &pushsdbgv 24							//'_parent'
      &pushsdbgm 25							//'ammoCapacity'
      &toNumber
      &pushone
      &dcallfp 20							// SetCapacity()
      &pushsdbgv 24							//'_parent'
      &pushsdbgm 26							//'ammoLoad'
      &toNumber
      &pushone
      &dcallfp 21							// SetLoad()
      &pushsdb 23							//'initialized'
      &pushtrue
      &setVariable
     label19:
    &end // of frame 0
  &end // of defineMovieClip 297

  &defineMovieClip 300 // total frames: 1

    &frame 0
      &pushs ''
      &pushbyte 7
      &pushfalse
      &setProperty
    &end // of frame 0
  &end // of defineMovieClip 300

  &defineMovieClip 303 // total frames: 1
  &end // of defineMovieClip 303

  &defineMovieClip 304 // total frames: 1
  &end // of defineMovieClip 304

  &defineMovieClip 305 // total frames: 1
  &end // of defineMovieClip 305

  &defineMovieClip 306 // total frames: 1
  &end // of defineMovieClip 306

  &defineMovieClip 307 // total frames: 40

    &frame 0
      &constants 'factionLabel', 'image', 'gotoAndPlay', 'SetFaction', 'onUnload', 'initialized', 'GDI'  
      &function2 SetFaction (r:1='faction') ()
        &pushsdb 0							//'factionLabel'
        &pushregister 1
        &setVariable
        &pushsdbgv 0							//'factionLabel'
        &pushone
        &pushsdbgv 1							//'image'
        &dcallmp 2							// gotoAndPlay()
      &end // of function SetFaction

      &function onUnload (      )      
        &pushsdb 3							//'SetFaction'
        &delete2
        &pop
        &pushsdb 4							//'onUnload'
        &delete2
        &pop
      &end // of function onUnload

      &pushsdbgv 5							//'initialized'
      &not
      &not
      &jnz label2      
      &pushsdbgv 0							//'factionLabel'
      &pushundef
      &equals
      &not
      &jnz label1      
      &pushsdb 0							//'factionLabel'
      &pushsdb 6							//'GDI'
      &setVariable
     label1:
      &pushsdb 5							//'initialized'
      &pushtrue
      &setVariable
     label2:
    &end // of frame 0

    &frame 9
      &stop
    &end // of frame 9

    &placeMovieClip 304 &as 'image'
    
      &onClipEvent &load
        &pushsgv '_parent'
        &pushsgm 'factionLabel'
        &gotoAndPlay      &end
    &end // of placeMovieClip 304

    &frame 19
      &stop
    &end // of frame 19

    &placeMovieClip 305 &as 'image'
    
      &onClipEvent &load
        &pushsgv '_parent'
        &pushsgm 'factionLabel'
        &gotoAndPlay      &end
    &end // of placeMovieClip 305

    &frame 29
      &stop
    &end // of frame 29

    &placeMovieClip 306 &as 'image'
    
      &onClipEvent &load
        &pushsgv '_parent'
        &pushsgm 'factionLabel'
        &gotoAndPlay      &end
    &end // of placeMovieClip 306

    &frame 39
      &stop
    &end // of frame 39
  &end // of defineMovieClip 307

  &placeMovieClip 307 &as 'rankInd'
  
    &onClipEvent &load
      &constants 'labelText', '$', 'RankLabel', '_parent', 'qualifyName', 'rankFactionLabel', 'factionLabel', 'rank', '_'  
      &pushsdb 0							//'labelText'
      &pushsdb 1							//'$'
      &pushsdb 2							//'RankLabel'
      &pushsdbgv 3							//'_parent'
      &pushbyte 2
      &pushsdb 4							//'qualifyName'
      &callFunction
      &add
      &setVariable
      &pushsdbgv 3							//'_parent'
      &pushsdbgm 5							//'rankFactionLabel'
      &pushundef
      &equals
      &not
      &not
      &jnz label1      
      &pushsdb 6							//'factionLabel'
      &pushsdbgv 3							//'_parent'
      &pushsdbgm 5							//'rankFactionLabel'
      &setVariable
     label1:
      &pushsdbgv 3							//'_parent'
      &pushsdbgm 7							//'rank'
      &pushundef
      &equals
      &not
      &not
      &jnz label2      
      &pushsdb 8							//'_'
      &pushsdbgv 3							//'_parent'
      &pushsdbgm 7							//'rank'
      &toString
      &add
      &gotoAndPlay     label2:
    &end
  &end // of placeMovieClip 307

  &frame 19
    &stop
  &end // of frame 19

  &frame 29
    &stop
  &end // of frame 29

  &defineMovieClip 314 // total frames: 30

    &frame 0
      &constants 'DetachFactionObserver', 'OnCurrentFactionChanged', 'onUnload', 'initialized', '_root', 'GetCurrentFaction', 'this', 'AttachFactionObserver'  
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

      &pushsdbgv 3							//'initialized'
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
      &pushsdb 3							//'initialized'
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
  &end // of defineMovieClip 314

  &frame 39
    &stop
  &end // of frame 39
&end
