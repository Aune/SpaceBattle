module Geometry where

import Prelude hiding(length)


-- Simple 3D vector stuff

data Vector = Vector Double Double Double
              deriving(Eq, Read, Show)
 
                      
length :: Vector -> Double
length (Vector a b c) = sqrt(a*a + b*b + c*c)

diff :: Vector -> Vector -> Vector
diff (Vector a b c) (Vector x y z) = Vector (a - x) (b - y) (c - z)

add :: Vector -> Vector -> Vector
add (Vector a b c) (Vector x y z) = Vector (a + x) (b + y) (c + z)
  
prod :: Vector -> Vector -> Double
prod (Vector a b c) (Vector x y z) = (a * x) + (b * y) + (c * z)


normalize :: Vector -> Vector
normalize v@(Vector a b c) = Vector (a/l) (b/l) (c/l)
  where l = length v

angle :: Vector -> Vector -> Double
angle x y = prod x y


-- Areas

data Area = Area {pos :: Vector, dir :: Vector, shape :: Vector -> Bool}


isInside :: Vector -> Area -> Bool
isInside vect area = (shape area) $  diff vect (pos area)


