import XMonad

main = xmonad defaultConfig 
        { modMask = mod4Mask --use super instead of alt
        , terminal = "kitty"
        }
