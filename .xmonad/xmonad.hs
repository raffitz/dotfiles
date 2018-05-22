-- default desktop configuration for Fedora

import System.Posix.Env (getEnv)
import Data.Maybe (maybe)

import XMonad
import XMonad.Config.Desktop
import XMonad.Config.Gnome
import XMonad.Config.Kde
import XMonad.Config.Xfce
import XMonad.Util.EZConfig ( additionalKeys )

main = do
     session <- getEnv "DESKTOP_SESSION"
     xmonad  $ maybe desktopConfig desktop session

desktop "gnome" = gnomeConfig
desktop "kde" = kde4Config
desktop "xfce" = xfceConfig
desktop "xmonad-mate" = gnomeConfig
desktop _ = desktopConfig
    { modMask = mod4Mask
    , terminal = "urxvt"
    } `additionalKeys` [ ((mod4Mask .|. shiftMask, xK_l), spawn "xscreensaver-command -lock") ]
