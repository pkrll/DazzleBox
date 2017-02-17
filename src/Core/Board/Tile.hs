module Core.Board.Tile (Tile(..), Direction(..)) where

{-
  REPRESENTATION CONVENTION:
    A tile is an unmovable piece on the board.

    A floor is a valid path for a computer or the player and is given by Floor (a, b) where (a, b) are the coordinates of the floor. A wall is an invalid path given by Wall (a, b), where (a,b) are the coordinates of the wall.
  REPRESENTATION INVARIANT:
    Tiles cannot have overlapping positions.

-}
data Tile = Floor (Float, Float) [Direction] | Wall (Float, Float)

{-
  REPRESENTATION CONVENTION:

  REPRESENTATION INVARIANT:
    None
-}
data Direction = Void --Up | Down | Left | Right

{- position a
   PRE:       True
   POST:      The current position of a.
   EXAMPLES:  position (Floor (1, 1)) == (1, 1)
-}
position :: Tile -> (Float, Float)
position (Floor a _) = a
position (Wall a)  = a