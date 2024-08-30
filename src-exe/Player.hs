module Player (Player (..), initialPlayerState, triangulo) where


import Graphics.Gloss
data Player = Player
    { playerX     :: Float
    , playerY     :: Float
    , playerAngle :: Float
    } deriving (Show, Eq)

initialPlayerState :: Float -> Float-> Float -> Player
initialPlayerState mazeOffsetX mazeOffsetY cellSize = Player 
    {
        playerX = mazeOffsetX + cellSize
    ,   playerY = mazeOffsetX - cellSize
    ,   playerAngle = 90
    }

triangulo :: Path
triangulo = [(0, cellSize / 2), (-cellSize / 2,-cellSize / 2), (cellSize / 2,-cellSize / 2)]