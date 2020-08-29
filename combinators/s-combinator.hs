




s :: (a -> b -> c) -> (a -> b) -> a -> c
s x y z = x z (y z)

t :: ((a -> b -> c) -> a -> b) -> (a -> b -> c) -> a -> c
t x y z = s s x y z

x :: (((b -> b -> c) -> b -> c) -> (b -> b -> c) -> b) -> (b -> b -> c) -> b -> c
x = undefined -- s t t











