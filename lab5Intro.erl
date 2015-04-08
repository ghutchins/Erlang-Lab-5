
-module(lab5Intro).
-export([square/1, cube/1]).
square(N) -> N*N.
cube(N) -> square(N)*N.
