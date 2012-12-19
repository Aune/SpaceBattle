module Unit where


import Geometry


data Weapon = Weapon {range :: Area
                     ,rate  :: Int
                     }

data Unit = Unit{sensorarea :: Area
                ,weapons :: Weapons
                ,fuel    :: Int
                ,hitarea :: Area
                ,program :: Program
                }