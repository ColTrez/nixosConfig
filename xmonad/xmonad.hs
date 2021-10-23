import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

main = xmonad $ def 
        { modMask = mod4Mask --use super instead of alt
        , terminal = "kitty"
        }
        `additionalKeysP`
        [ ("M-]" , spawn "firefox") ]

