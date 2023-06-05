{-# OPTIONS_GHC -Wno-deprecations -Wno-tabs #-}
-- this line make the compiler shut up about warnings

-- ## Modules ## -------------------------------------------------------------------
import XMonad
import XMonad.Util.SpawnOnce
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.ManageHelpers

import XMonad.Layout.Fullscreen
import XMonad.Layout.NoBorders
import XMonad.Layout.Spacing
import XMonad.Layout.Gaps

import Graphics.X11.ExtraTypes.XF86
import System.Exit
import Control.Monad
import Data.Monoid
import Data.Maybe

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

import qualified XMonad.Actions.CycleWS as CWS
import XMonad.Util.Paste

import qualified XMonad.Util.Hacks as Hacks

-- ## Startup hook ## ---------------------------------------------------------------
myStartupHook = do
    spawn "bash ~/projects/rice/startup.sh"

-- ## Applications ## ---------------------------------------------------------------

-- Terminal
myTerminal		= "kitty"

-- Rofi Menus
-- rofi_launcher 		= spawn "~/.xmonad/rofi/bin/launcher"
-- rofi_screenshot 	= spawn "~/.xmonad/rofi/bin/screenshot"

-- ## Settings ## -------------------------------------------------------------------

-- focus follows the mouse pointer
myFocusFollowsMouse 	:: Bool
myFocusFollowsMouse 	= True

-- clicking on a window to focus
myClickJustFocuses 		:: Bool
myClickJustFocuses 		= False

-- Width of the window border in pixels
myBorderWidth   		= 1

-- Border colors for focused & unfocused windows
myFocusedBorderColor 	= "#BB553F"
myNormalBorderColor  	= "#E6DFE0"

-- modMask : modkey you want to use
-- mod1Mask : left alt Key
-- mod4Mask : Windows or Super Key
myModMask       		= mod4Mask

-- Workspaces (ewmh)
myWorkspaces    		= ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]

altMask = mod1Mask

-- ## Key Bindings ## -------------------------------------------------------------------
myKeys conf@(XConfig {XMonad.modMask = super}) = M.fromList $ [

    {-
                    Following are the keybinds personally catered to my habbits.
                    If you are using vim, do `:set cc=120` for a better viewing experience.
                                                                                                                -}


    ------------------------------------------Workspace Related Keybinds------------------------------------------

    -- ctrl + alt + left/right                          focus on the left or right workspace
      ((controlMask .|. altMask,               xK_l),  CWS.nextWS)
    , ((controlMask .|. altMask,               xK_h),  CWS.prevWS)
    , ((controlMask .|. altMask,               xK_Right),  CWS.nextWS)
    , ((controlMask .|. altMask,               xK_Left),  CWS.prevWS)


    -- ctrl + alt + shift + left/right                      send (shift) window to left or right workspace
    , ((controlMask .|. altMask .|. shiftMask, xK_l),       CWS.shiftToNext >> CWS.nextWS)
    , ((controlMask .|. altMask .|. shiftMask, xK_h),       CWS.shiftToPrev >> CWS.prevWS)
    , ((controlMask .|. altMask .|. shiftMask, xK_Right),   CWS.shiftToNext >> CWS.nextWS)
    , ((controlMask .|. altMask .|. shiftMask, xK_Left),    CWS.shiftToPrev >> CWS.prevWS)

    -- ctrl + alt + shift + {1-9}                          send (shift) window to workspace 1-9
    , ((controlMask .|. altMask .|. shiftMask, xK_1),       windows $ W.shift "1")
    , ((controlMask .|. altMask .|. shiftMask, xK_2),       windows $ W.shift "2")
    , ((controlMask .|. altMask .|. shiftMask, xK_3),       windows $ W.shift "3")
    , ((controlMask .|. altMask .|. shiftMask, xK_4),       windows $ W.shift "4")
    , ((controlMask .|. altMask .|. shiftMask, xK_5),       windows $ W.shift "5")
    , ((controlMask .|. altMask .|. shiftMask, xK_6),       windows $ W.shift "6")
    , ((controlMask .|. altMask .|. shiftMask, xK_7),       windows $ W.shift "7")
    , ((controlMask .|. altMask .|. shiftMask, xK_8),       windows $ W.shift "8")
    , ((controlMask .|. altMask .|. shiftMask, xK_9),       windows $ W.shift "9")
    , ((controlMask .|. altMask .|. shiftMask, xK_0),       windows $ W.shift "10")


    -- super + {1-9}                                    focus on workspace 1-9
    , ((super,                  xK_1),                  windows $ W.greedyView "1")
    , ((super,                  xK_2),                  windows $ W.greedyView "2")
    , ((super,                  xK_3),                  windows $ W.greedyView "3")
    , ((super,                  xK_4),                  windows $ W.greedyView "4")
    , ((super,                  xK_5),                  windows $ W.greedyView "5")
    , ((super,                  xK_6),                  windows $ W.greedyView "6")
    , ((super,                  xK_7),                  windows $ W.greedyView "7")
    , ((super,                  xK_8),                  windows $ W.greedyView "8")
    , ((super,                  xK_9),                  windows $ W.greedyView "9")


    ----------------------------------------Tiling window related keybinds----------------------------------------

    -- win + shift + left/right                         shrink/expand window
    , ((super .|. shiftMask,    xK_Left),               sendMessage Shrink)
    , ((super .|. shiftMask,    xK_h),                  sendMessage Shrink)
    , ((super .|. shiftMask,    xK_Right),              sendMessage Expand)
    , ((super .|. shiftMask,    xK_l),                  sendMessage Expand)

    -- super + space                                    switch between vertical and horizontal layout
    , ((super,                  xK_space), 		        sendMessage NextLayout)

    -- super + shift + return                           push (shift) window into tiled mode
    , ((super .|. shiftMask,    xK_Return),		        withFocused $ windows . W.sink)


    ---------------------------------------Floating Window Related Keybinds---------------------------------------
    --  TODO :)

    ----------------------------------------Common Window Related Keybinds----------------------------------------

    -- super + q                                        close focused window
    , ((super,                  xK_q),                  kill)

    -- win + up/down                                    move focus to left/right/up/down window
    , ((super,                  xK_Up),                 windows W.focusUp)
    , ((super,                  xK_k),                  windows W.focusUp)
    , ((super,                  xK_Down),               windows W.focusDown)
    , ((super,                  xK_j),                  windows W.focusDown)

    -- super + return                                   swap focused window and master window
    , ((super,                  xK_Return),             windows W.swapMaster)

    --------------------------------------------Launching Applications--------------------------------------------


    -- super + t                                        launch alacritty in floating mode
    , ((super, xK_t), 			                        spawn "kitty --class \"kitty-float\"")

    -- super                                            dmenu
    -- 
    , ((super, xK_space), 	                            spawn "j4-dmenu-desktop --dmenu=\"dmenu -i -fn 'JetBrainsMono NF Light-15'\"")

    -- super + shift + s                                rofi screenshot
    , ((super .|. shiftMask,            xK_s),          spawn "flameshot gui")

    -- super + shift + c                                color picker (xcolor)
    , ((super .|. shiftMask,            xK_c),          spawn "xcolor -s")

    -- xmouseless
    , ((super,                          xK_Escape),     spawn "xmouseless")


    -------------------------------------------------Miscellaneous-----------------------------------------------


    -- Audio Keys
    , ((0,         xF86XK_AudioPlay), 			        spawn "mpc toggle")
    , ((0,         xF86XK_AudioPrev), 			        spawn "mpc prev")
    , ((0,         xF86XK_AudioNext), 			        spawn "mpc next")
    , ((0,         xF86XK_AudioStop), 			        spawn "mpc stop")
    , ((0,         xF86XK_AudioRaiseVolume), 	        spawn "pamixer -i 5")
    , ((0,         xF86XK_AudioLowerVolume), 	        spawn "pamixer -d 5")
    , ((0,         xF86XK_AudioMute), 			        spawn "pamixer -t")
    -- , ((0,         xF86XK_AudioMicMute), 		        spawn "pamixer ")

    -- Numpad 1 (End) simulates p key
    , ((0,                                  xK_KP_End), 	sendKey 0                                   xK_p)
    , ((super,                              xK_KP_End), 	sendKey super                               xK_p)
    , ((shiftMask,                          xK_KP_End), 	sendKey shiftMask                           xK_p)
    , ((controlMask,                        xK_KP_End), 	sendKey controlMask                         xK_p)
    , ((altMask,                            xK_KP_End), 	sendKey altMask                            xK_p)
    , ((shiftMask .|. controlMask,          xK_KP_End), 	sendKey (shiftMask .|. controlMask)         xK_p)
    , ((shiftMask .|. altMask,              xK_KP_End), 	sendKey (shiftMask .|. altMask)            xK_p)
    , ((controlMask .|. altMask,            xK_KP_End), 	sendKey (controlMask .|. altMask)          xK_p)
    , ((super .|. controlMask,              xK_KP_End), 	sendKey (super .|. controlMask)             xK_p)
    , ((super .|. shiftMask,                xK_KP_End), 	sendKey (super .|. shiftMask)               xK_p)
    , ((super .|. altMask,                  xK_KP_End), 	sendKey (super .|. altMask)                xK_p)

    , ((0,                                  xK_KP_Next), 	sendKey 0                                   xK_l)
    , ((super,                              xK_KP_Next), 	sendKey super                               xK_l)
    , ((shiftMask,                          xK_KP_Next), 	sendKey shiftMask                           xK_l)
    , ((controlMask,                        xK_KP_Next), 	sendKey controlMask                         xK_l)
    , ((altMask,                            xK_KP_Next), 	sendKey altMask                            xK_l)
    , ((shiftMask .|. controlMask,          xK_KP_Next), 	sendKey (shiftMask .|. controlMask)         xK_l)
    , ((shiftMask .|. altMask,              xK_KP_Next), 	sendKey (shiftMask .|. altMask)            xK_l)
    , ((controlMask .|. altMask,            xK_KP_Next), 	sendKey (controlMask .|. altMask)          xK_l)
    , ((super .|. controlMask,              xK_KP_Next), 	sendKey (super .|. controlMask)             xK_l)
    , ((super .|. shiftMask,                xK_KP_Next), 	sendKey (super .|. shiftMask)               xK_l)
    , ((super .|. altMask,                  xK_KP_Next), 	sendKey (super .|. altMask)                xK_l)

    -------------------------------------------------------------------------------------------------------------

    ]

-- ## Mouse Bindings ## ------------------------------------------------------------------
myMouseBindings (XConfig {XMonad.modMask = super}) = M.fromList $ [

    -- mod-button1, Set the window to floating mode and move by dragging
      ((super, button1), (\w -> focus w >> mouseMoveWindow w >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((super, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((super, button3), (\w -> focus w >> mouseResizeWindow w >> windows W.shiftMaster))

    ]

-- ## Layouts ## -------------------------------------------------------------------------
myLayout = avoidStruts $ smartBorders (tiled ||| Mirror tiled)
	where
		-- default tiling algorithm partitions the screen into two panes
		tiled   = Tall nmaster delta ratio

		-- The default number of windows in the master pane
		nmaster = 1

		-- Default proportion of screen occupied by master pane
		ratio   = 1/2

		-- Percent of screen to increment by when resizing panes
		delta   = 3/100

-- ## Window rules ## --------------------------------------------------------------------
myManageHook = composeAll $ ( concat [
      [isDialog --> doCenterFloat]
    , [className =? c --> doCenterFloat | c <- myCFloats]
    , [title =? t --> doCenterFloat | t <- myTFloats]
    , [resource =? r --> doFloat | r <- myRFloats]
    , [resource =? i --> doIgnore | i <- myIgnores]
    , [checkDock --> doLower]
    ] ++ myShiftHooks ++ mySpecialHooks )
    where
        myCFloats = [
            "alacritty-float", "MPlayer", "mpv", "Gimp", "feh", "Viewnior", "Gpicview",
            "Kvantum Manager", "qt5ct", "VirtualBox Manager", "qemu", "Qemu-system-x86_64",
            "Lxappearance", "Nitrogen", "Arandr", "Pavucontrol", "Xfce4-power-manager-settings",
            "Nm-connection-editor", "spotify", "Spotify", "qBittorrent", "Thunar", "Blueberry.py",
            "marktext", "DesktopEditors", "qbittorrent", "rpi-imager", "Imager",
            "Steam", "onboard", "Onboard", "lutris", "Lutris",
            "org-jdownloader-update-launcher-JDLauncher", "7zFM", "7zfm", "VirtualBox",
            "shotwell", "Shotwell"
            ]
        myTFloats = ["Downloads", "Save As...", "Spotify", "JDownloader 2"]
        myRFloats = []
        myIgnores = ["desktop_window"]

        myShiftHooks = [

            -- Workspace 1 : Terminal
             className =? "Alacritty"           --> doShift "1"
            ,className =? "kitty"               --> doShift "1"
            ,className =? "Chromium"            --> doShift "1" -- Automation Browser

            -- Workspace 2 : File Manager
            , className =? "Thunar"             --> doShift "2"

            -- Workspace 3 : Code
            , className =? "Code"               --> doShift "3"

            -- Workspace 4 : Browser
            , className =? "firefox"            --> doShift "4"
            , className =? "Navigator"          --> doShift "4"
            , className =? "Vivaldi-stable"     --> doShift "4"
            , className =? "vivaldi-stable"     --> doShift "4"

            -- Workspace 5 : Chatting Software
            , className =? "discord"            --> doShift "5"

            -- Workspace 6 : Music
            , className =? "Spotify"            --> doShift "6"
            , className =? "spotify"            --> doShift "6"
            , title     =? "Spotify"            --> doShift "6"

            -- Workspace 7 : Notes and such
            , className =? "obsidian"           --> doShift "7"
            , className =? "mongodb compass"    --> doShift "7"
            , className =? "MongoDB Compass"    --> doShift "7"

            -- Workspace 8 : Video
            , className =? "mpv"                --> doShift "8"
            , className =? "vlc"                --> doShift "8"

            -- Workspace 9 : <Unused>

            -- Workspace 10 : Torrents
            , className =? "qbittorrent"        --> doShift "10"
            , className =? "qBittorrent"        --> doShift "10"

            ]

        mySpecialHooks = [
              className =? "kitty-float" --> doRectFloat( W.RationalRect 0.1 0.1 0.6 0.6 )
            ]

-- ## Event handling ## -------------------------------------------------------------------
myEventHook = Hacks.windowedFullscreenFixEventHook

-- ## Logging ## --------------------------------------------------------------------------
myLogHook = return ()

-- ## Main Function ## --------------------------------------------------------------------

-- Run xmonad with all the configs we set up.
main = xmonad $ fullscreenSupport $ docks $ ewmh defaults

defaults = def {
      -- configs
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,

      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        manageHook = myManageHook,
        layoutHook = gaps [(L,0), (R,0), (U,0), (D,0)] $ spacingRaw True (Border 10 0 10 0) True (Border 0 10 0 10) True $ myLayout,
        handleEventHook    = myEventHook,
        logHook            = myLogHook,
        startupHook        = myStartupHook
    }
