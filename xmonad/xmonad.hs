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
    spawn "bash ~/.xmonad/bin/autostart.sh"

-- ## Applications ## ---------------------------------------------------------------

-- Terminal
myTerminal		= "alacritty"

-- Rofi Menus
rofi_launcher 		= spawn "~/.xmonad/rofi/bin/launcher"
rofi_screenshot 	= spawn "~/.xmonad/rofi/bin/screenshot"

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

-- ## Key Bindings ## -------------------------------------------------------------------
myKeys conf@(XConfig {XMonad.modMask = super}) = M.fromList $

    {-
                    Following are the keybinds personally catered to my habbits.
                    If you are using vim, do `:set cc=120` for a better viewing experience.
                                                                                                                -}


    ------------------------------------------Workspace Related Keybinds------------------------------------------

    -- ctrl + alt + left/right                          focus on the left or right workspace
    [ ((controlMask .|. mod1Mask,               xK_l),  CWS.nextWS)
    , ((controlMask .|. mod1Mask,               xK_h),  CWS.prevWS)

    -- ctrl + alt + shift + left/right                  send (shift) window to left or right workspace
    , ((controlMask .|. mod1Mask .|. shiftMask, xK_l),  CWS.shiftToNext >> CWS.nextWS)
    , ((controlMask .|. mod1Mask .|. shiftMask, xK_h),  CWS.shiftToPrev >> CWS.prevWS)


    ----------------------------------------Tiling window related keybinds----------------------------------------

    -- win + up/down                                    move focus to left/right/up/down window
    , ((super,                  xK_Up),                 windows W.focusUp)
    , ((super,                  xK_k),                  windows W.focusUp)
    , ((super,                  xK_Down),               windows W.focusDown)
    , ((super,                  xK_j),                  windows W.focusDown)

    -- win + shift + left/right                         shrink/expand window
    , ((super .|. shiftMask,    xK_Left),               sendMessage Shrink)
    , ((super .|. shiftMask,    xK_h),                  sendMessage Shrink)
    , ((super .|. shiftMask,    xK_Right),              sendMessage Expand)
    , ((super .|. shiftMask,    xK_l),                  sendMessage Expand)

    -- super + space                                    switch between vertical and horizontal layout
    , ((super,                  xK_space), 		        sendMessage NextLayout)

    -- super + shift + return                           push (shift) window into tiled mode
    , ((super .|. shiftMask,    xK_Return),		        withFocused $ windows . W.sink)

    -- super + return                                   swap focused window and master window
    , ((super,                  xK_Return),             windows W.swapMaster)


    ---------------------------------------Floating Window Related Keybinds---------------------------------------
    --  TODO :)

    ----------------------------------------Common Window Related Keybinds----------------------------------------

    -- super + q                                        close focused window
    , ((super,                  xK_q),                  kill)


    --------------------------------------------Launching Applications--------------------------------------------


    -- super + t                                        launch alacritty in floating mode
    , ((super, xK_t), 			                        spawn "alacritty --class \"alacritty-float\"")

    -- super                                            rofi launcher
    , ((mod1Mask,           		    xK_F1), 	    rofi_launcher)

    -- super + shift + s                                rofi screenshot
    , ((super .|. shiftMask,            xK_s),          rofi_screenshot)

    -- super + shift + c                                color picker (xcolor)
    , ((super .|. shiftMask,            xK_c),          spawn "xcolor -s")


    -------------------------------------------------Miscellaneous-----------------------------------------------


    -- Audio Keys
    , ((0,         xF86XK_AudioPlay), 			        spawn "mpc toggle")
    , ((0,         xF86XK_AudioPrev), 			        spawn "mpc prev")
    , ((0,         xF86XK_AudioNext), 			        spawn "mpc next")
    , ((0,         xF86XK_AudioStop), 			        spawn "mpc stop")
    , ((0,         xF86XK_AudioRaiseVolume), 	        spawn "volume --inc")
    , ((0,         xF86XK_AudioLowerVolume), 	        spawn "volume --dec")
    , ((0,         xF86XK_AudioMute), 			        spawn "volume --toggle")
    , ((0,         xF86XK_AudioMicMute), 		        spawn "volume --toggle-mic")

    -- Numpad 1 (End) simulates p key
    , ((0,                                  xK_KP_End), 	sendKey 0                                   xK_p)
    , ((super,                              xK_KP_End), 	sendKey super                               xK_p)
    , ((shiftMask,                          xK_KP_End), 	sendKey shiftMask                           xK_p)
    , ((controlMask,                        xK_KP_End), 	sendKey controlMask                         xK_p)
    , ((mod1Mask,                           xK_KP_End), 	sendKey mod1Mask                            xK_p)
    , ((shiftMask .|. controlMask),         xK_KP_End), 	sendKey (shiftMask .|. controlMask)         xK_p)
    , ((shiftMask .|. mod1Mask),            xK_KP_End), 	sendKey (shiftMask .|. mod1Mask)            xK_p)
    , ((controlMask .|. mod1Mask),          xK_KP_End), 	sendKey (controlMask .|. mod1Mask)          xK_p)
    , ((super .|. controlMask),             xK_KP_End), 	sendKey (super .|. controlMask)             xK_p)
    , ((super .|. shiftMask),               xK_KP_End), 	sendKey (super .|. shiftMask)               xK_p)
    , ((super .|. mod1Mask),                xK_KP_End), 	sendKey (super .|. mod1Mask)                xK_p)


    -------------------------------------------------------------------------------------------------------------

    ]

-- ## Mouse Bindings ## ------------------------------------------------------------------
myMouseBindings (XConfig {XMonad.modMask = super}) = M.fromList $

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((super, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((super, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((super, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))
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
myManageHook = composeAll . concat $
    [ [isDialog --> doCenterFloat]
    , [className =? c --> doCenterFloat | c <- myCFloats]
    , [title =? t --> doCenterFloat | t <- myTFloats]
    , [resource =? r --> doFloat | r <- myRFloats]
    , [resource =? i --> doIgnore | i <- myIgnores]
    , [checkDock --> doLower]
    ]
    where
        myCFloats = [
            "alacritty-float", "MPlayer", "mpv", "Gimp", "feh", "Viewnior", "Gpicview",
            "Kvantum Manager", "qt5ct", "VirtualBox Manager", "qemu", "Qemu-system-x86_64",
            "Lxappearance", "Nitrogen", "Arandr", "Pavucontrol", "Xfce4-power-manager-settings",
            "Nm-connection-editor", "Spotify", "qBittorrrent", "Thunar", "Blueberry.py"
            ]
        myTFloats = ["Downloads", "Save As...", "About : Aditya Shakya", "Getting Started"]
        myRFloats = []
        myIgnores = ["desktop_window"]

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
        layoutHook = gaps [(L,0), (R,0), (U,0), (D,0)] $ spacingRaw False (Border 10 0 10 0) True (Border 0 10 0 10) True $ myLayout,
        handleEventHook    = myEventHook,
        logHook            = myLogHook,
        startupHook        = myStartupHook
    }
