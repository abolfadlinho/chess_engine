type Location = (Char, Int)

data Player = White | Black deriving (Show, Eq)

data Piece = P Location | N Location | K Location | Q Location | R Location | B Location deriving (Show, Eq)

type Board = (Player, [Piece], [Piece])

setBoard :: Board
setBoard =
  (White,
    [R ('h', 1), N ('g', 1), B ('f', 1), K ('e', 1),
    Q ('d', 1), B ('c', 1), N ('b', 1), R ('a', 1),
    P ('h', 2), P ('g', 2), P ('f', 2), P ('e', 2),
    P ('d', 2), P ('c', 2), P ('b', 2), P ('a', 2)],
    [R ('h', 8), N ('g', 8), B ('f', 8), K ('e', 8),
    Q ('d', 8), B ('c', 8), N ('b', 8), R ('a', 8),
    P ('h', 7), P ('g', 7), P ('f', 7), P ('e', 7),
    P ('d', 7), P ('c', 7), P ('b', 7), P ('a', 7)]
  )
contains element [] = False 
contains element (x:xs) = if (element == x) then True
							else contains element xs
ncontains element list = not (contains element list)

cE s = if (s == "") then "  "
				else  s

ord x = if (x == 'a') then 1
		else if (x == 'b') then 2
			else if (x == 'c') then 3
				else if (x == 'd') then 4
					else if (x == 'e') then 5
						else if (x == 'f') then 6
							else if (x == 'g') then 7
								else if (x == 'h') then 8
									else 0
									
									
									
deord x = if (x == 1) then 'a'
		else if (x == 2) then 'b'
			else if (x == 3) then 'c'
				else if (x == 4) then 'd'
					else if (x == 5) then 'e'
						else if (x == 6) then 'f'
							else if (x == 7) then 'g'
								else if (x == 8) then 'h'
									else 'i'

pS White = "White"
pS Black = "Black"

getLoc (P location) = location
getLoc (N location) = location
getLoc (K location) = location
getLoc (Q location) = location
getLoc (R location) = location
getLoc (B location) = location


getCell _ [] _ = ""
getCell c ((P location):xs) location1 = if (location == location1) then "P" ++ c
										else getCell c xs location1
getCell c ((N location):xs) location1 = if (location == location1) then "N" ++ c
										else getCell c xs location1
getCell c ((K location):xs) location1 = if (location == location1) then "K" ++ c
										else getCell c xs location1
getCell c ((Q location):xs) location1 = if (location == location1) then "Q" ++ c
										else getCell c xs location1
getCell c ((R location):xs) location1 = if (location == location1) then "R" ++ c
										else getCell c xs location1
getCell c ((B location):xs) location1 = if (location == location1) then "B" ++ c
										else getCell c xs location1
	
visualizeBoard (player, whitePieces, blackPieces) = putStrLn ("    a    b    c    d    e    f    g    h" 
	++ "\n8 | " ++ cE ((getCell "W" whitePieces ('a',8)) ++ (getCell "B" blackPieces ('a',8))) ++ " | " ++ cE ((getCell "W" whitePieces ('b',8)) ++ (getCell "B" blackPieces ('b',8)))  ++ " | " ++ cE ((getCell "W" whitePieces ('c',8)) ++ (getCell "B" blackPieces ('c',8)))  ++ " | " ++ cE ((getCell "W" whitePieces ('d',8)) ++ (getCell "B" blackPieces ('d',8)))  ++ " | " ++ cE ((getCell "W" whitePieces ('e',8)) ++ (getCell "B" blackPieces ('e',8)))  ++ " | " ++ cE ((getCell "W" whitePieces ('f',8)) ++ (getCell "B" blackPieces ('f',8)))  ++ " | " ++ cE ((getCell "W" whitePieces ('g',8)) ++ (getCell "B" blackPieces ('g',8)))  ++ " | " ++ cE ((getCell "W" whitePieces ('h',8)) ++ (getCell "B" blackPieces ('h',8)))
	++ "\n7 | " ++ cE ((getCell "W" whitePieces ('a',7)) ++ (getCell "B" blackPieces ('a',7))) ++ " | " ++ cE ((getCell "W" whitePieces ('b',7)) ++ (getCell "B" blackPieces ('b',7)))  ++ " | " ++ cE ((getCell "W" whitePieces ('c',7)) ++ (getCell "B" blackPieces ('c',7)))  ++ " | " ++ cE ((getCell "W" whitePieces ('d',7)) ++ (getCell "B" blackPieces ('d',7)))  ++ " | " ++ cE ((getCell "W" whitePieces ('e',7)) ++ (getCell "B" blackPieces ('e',7)))  ++ " | " ++ cE ((getCell "W" whitePieces ('f',7)) ++ (getCell "B" blackPieces ('f',7)))  ++ " | " ++ cE ((getCell "W" whitePieces ('g',7)) ++ (getCell "B" blackPieces ('g',7)))  ++ " | " ++ cE ((getCell "W" whitePieces ('h',7)) ++ (getCell "B" blackPieces ('h',7)))		
	++ "\n6 | " ++ cE ((getCell "W" whitePieces ('a',6)) ++ (getCell "B" blackPieces ('a',6))) ++ " | " ++ cE ((getCell "W" whitePieces ('b',6)) ++ (getCell "B" blackPieces ('b',6)))  ++ " | " ++ cE ((getCell "W" whitePieces ('c',6)) ++ (getCell "B" blackPieces ('c',6)))  ++ " | " ++ cE ((getCell "W" whitePieces ('d',6)) ++ (getCell "B" blackPieces ('d',6)))  ++ " | " ++ cE ((getCell "W" whitePieces ('e',6)) ++ (getCell "B" blackPieces ('e',6)))  ++ " | " ++ cE ((getCell "W" whitePieces ('f',6)) ++ (getCell "B" blackPieces ('f',6)))  ++ " | " ++ cE ((getCell "W" whitePieces ('g',6)) ++ (getCell "B" blackPieces ('g',6)))  ++ " | " ++ cE ((getCell "W" whitePieces ('h',6)) ++ (getCell "B" blackPieces ('h',6)))		
	++ "\n5 | " ++ cE ((getCell "W" whitePieces ('a',5)) ++ (getCell "B" blackPieces ('a',5))) ++ " | " ++ cE ((getCell "W" whitePieces ('b',5)) ++ (getCell "B" blackPieces ('b',5)))  ++ " | " ++ cE ((getCell "W" whitePieces ('c',5)) ++ (getCell "B" blackPieces ('c',5)))  ++ " | " ++ cE ((getCell "W" whitePieces ('d',5)) ++ (getCell "B" blackPieces ('d',5)))  ++ " | " ++ cE ((getCell "W" whitePieces ('e',5)) ++ (getCell "B" blackPieces ('e',5)))  ++ " | " ++ cE ((getCell "W" whitePieces ('f',5)) ++ (getCell "B" blackPieces ('f',5)))  ++ " | " ++ cE ((getCell "W" whitePieces ('g',5)) ++ (getCell "B" blackPieces ('g',5)))  ++ " | " ++ cE ((getCell "W" whitePieces ('h',5)) ++ (getCell "B" blackPieces ('h',5)))		
	++ "\n4 | " ++ cE ((getCell "W" whitePieces ('a',4)) ++ (getCell "B" blackPieces ('a',4))) ++ " | " ++ cE ((getCell "W" whitePieces ('b',4)) ++ (getCell "B" blackPieces ('b',4)))  ++ " | " ++ cE ((getCell "W" whitePieces ('c',4)) ++ (getCell "B" blackPieces ('c',4)))  ++ " | " ++ cE ((getCell "W" whitePieces ('d',4)) ++ (getCell "B" blackPieces ('d',4)))  ++ " | " ++ cE ((getCell "W" whitePieces ('e',4)) ++ (getCell "B" blackPieces ('e',4)))  ++ " | " ++ cE ((getCell "W" whitePieces ('f',4)) ++ (getCell "B" blackPieces ('f',4)))  ++ " | " ++ cE ((getCell "W" whitePieces ('g',4)) ++ (getCell "B" blackPieces ('g',4)))  ++ " | " ++ cE ((getCell "W" whitePieces ('h',4)) ++ (getCell "B" blackPieces ('h',4)))		
	++ "\n3 | " ++ cE ((getCell "W" whitePieces ('a',3)) ++ (getCell "B" blackPieces ('a',3))) ++ " | " ++ cE ((getCell "W" whitePieces ('b',3)) ++ (getCell "B" blackPieces ('b',3)))  ++ " | " ++ cE ((getCell "W" whitePieces ('c',3)) ++ (getCell "B" blackPieces ('c',3)))  ++ " | " ++ cE ((getCell "W" whitePieces ('d',3)) ++ (getCell "B" blackPieces ('d',3)))  ++ " | " ++ cE ((getCell "W" whitePieces ('e',3)) ++ (getCell "B" blackPieces ('e',3)))  ++ " | " ++ cE ((getCell "W" whitePieces ('f',3)) ++ (getCell "B" blackPieces ('f',3)))  ++ " | " ++ cE ((getCell "W" whitePieces ('g',3)) ++ (getCell "B" blackPieces ('g',3)))  ++ " | " ++ cE ((getCell "W" whitePieces ('h',3)) ++ (getCell "B" blackPieces ('h',3)))		
	++ "\n2 | " ++ cE ((getCell "W" whitePieces ('a',2)) ++ (getCell "B" blackPieces ('a',2))) ++ " | " ++ cE ((getCell "W" whitePieces ('b',2)) ++ (getCell "B" blackPieces ('b',2)))  ++ " | " ++ cE ((getCell "W" whitePieces ('c',2)) ++ (getCell "B" blackPieces ('c',2)))  ++ " | " ++ cE ((getCell "W" whitePieces ('d',2)) ++ (getCell "B" blackPieces ('d',2)))  ++ " | " ++ cE ((getCell "W" whitePieces ('e',2)) ++ (getCell "B" blackPieces ('e',2)))  ++ " | " ++ cE ((getCell "W" whitePieces ('f',2)) ++ (getCell "B" blackPieces ('f',2)))  ++ " | " ++ cE ((getCell "W" whitePieces ('g',2)) ++ (getCell "B" blackPieces ('g',2)))  ++ " | " ++ cE ((getCell "W" whitePieces ('h',2)) ++ (getCell "B" blackPieces ('h',2)))		
	++ "\n1 | " ++ cE ((getCell "W" whitePieces ('a',1)) ++ (getCell "B" blackPieces ('a',1))) ++ " | " ++ cE ((getCell "W" whitePieces ('b',1)) ++ (getCell "B" blackPieces ('b',1)))  ++ " | " ++ cE ((getCell "W" whitePieces ('c',1)) ++ (getCell "B" blackPieces ('c',1)))  ++ " | " ++ cE ((getCell "W" whitePieces ('d',1)) ++ (getCell "B" blackPieces ('d',1)))  ++ " | " ++ cE ((getCell "W" whitePieces ('e',1)) ++ (getCell "B" blackPieces ('e',1)))  ++ " | " ++ cE ((getCell "W" whitePieces ('f',1)) ++ (getCell "B" blackPieces ('f',1)))  ++ " | " ++ cE ((getCell "W" whitePieces ('g',1)) ++ (getCell "B" blackPieces ('g',1)))  ++ " | " ++ cE ((getCell "W" whitePieces ('h',1)) ++ (getCell "B" blackPieces ('h',1)))		
	++ "\n" ++ "\n" ++ "Turn: " ++ pS player )							


hasBlack [] _ = False
hasBlack (piece:xs) location1 = if ((getLoc piece) == location1) then True
											else hasBlack xs location1

hasWhite [] _ = False								
hasWhite (piece:xs) location1 = if ((getLoc piece) == location1) then True
											else hasWhite xs location1											
											
isNotEmpty (_, whitePieces, blackPieces) location = (hasWhite whitePieces location) || (hasBlack blackPieces location)
isEmpty (_, whitePieces, blackPieces) location = (not (hasWhite whitePieces location) && not (hasBlack blackPieces location))
									
isSameDiagonal :: Location -> Location -> Bool
isSameDiagonal (col1, row1) (col2, row2) =
				abs ((ord col1) - (ord col2)) == abs (row1 - row2)

isInMap (col,row) = if (row <= 8 && row >= 1 && ord col <= 8 && ord col >= 1) then True
					else False
  
getDirectionCol fcol tcol = 
	if ((ord fcol) > (ord tcol)) then deord ((ord fcol)-1)
		else deord ((ord fcol)+1)
getDirectionRow frow trow = 
	if (frow > trow) then (frow-1)
		else (frow+1)
		
---nothingInBetween :: Board -> Location -> Location -> Bool 
nothingInBetween b (startc,startr) (fcol,frow) (tcol,trow) = 
	if ((fcol == tcol) && (frow == trow)) then True
		else ((((startc == fcol) && (startr == frow)) ||(isEmpty b (fcol,frow))) && (nothingInBetween b (startc,startr) ((getDirectionCol fcol tcol),(getDirectionRow frow trow)) (tcol,trow)))
			
isVClear board start (fcol,frow) (tcol,trow) = if ( frow == trow ) then True
										else ((((start == frow) || isEmpty board (fcol,frow)) && (isVClear board start (fcol,(getDirectionRow frow trow)) (tcol,trow))))
isHClear board start (fcol,frow) (tcol,trow) = if ( fcol == tcol ) then True
										else ((((start == fcol) || isEmpty board (fcol,frow)) && (isHClear board start ((getDirectionCol fcol tcol),frow) (tcol,trow))))



isLegal :: Piece -> Board -> Location -> Bool
isLegal piece (c,whitePieces,blackPieces) location = if ((hasBlack blackPieces (getLoc piece)) && ((isEmpty (c,whitePieces,blackPieces) location) || (hasWhite whitePieces location))) then isLegalMove piece location (c,whitePieces,blackPieces)
												else if ((hasWhite whitePieces (getLoc piece)) &&((isEmpty (c,whitePieces,blackPieces) location) || (hasBlack blackPieces location))) then isLegalMove piece location (c,whitePieces,blackPieces)
												else False

isLegalMove :: Piece -> Location -> Board -> Bool
isLegalMove piece location board = case piece of
  P loc -> isLegalPawnMove loc location board
  N loc -> isLegalKnightMove loc location board
  K loc -> isLegalKingMove loc location board
  Q loc -> isLegalQueenMove loc location board
  R loc -> isLegalRookMove loc location board
  B loc -> isLegalBishopMove loc location board

isLegalKingMove :: Location -> Location -> Board -> Bool
isLegalKingMove (fromCol, fromRow) (toCol, toRow) board=
  abs (fromColOrd - toColOrd) <= 1 && abs (fromRow - toRow) <= 1
  where
    fromColOrd = fromEnum fromCol
    toColOrd = fromEnum toCol
	
isLegalRookMove (fcol,frow) (tcol,trow) board = 
	if(fcol == tcol) then isVClear board frow (fcol,frow) (tcol,trow)
		else if (frow == trow) then isHClear board fcol (fcol ,frow) (tcol,trow)
			else False
			
isLegalKnightMove (fcol, frow) (tcol, trow) board = 
	if (((abs ((ord tcol) - (ord fcol)) == 1) && ((abs (trow - frow)) == 2)) || ((abs ((ord tcol) - (ord fcol)) == 2) && ((abs (trow - frow)) == 1))) then True
		else False

isLegalBishopMove (fcol, frow) (tcol, trow) board = 
	if ((isSameDiagonal (fcol, frow) (tcol, trow)) && nothingInBetween board (fcol, frow) (fcol, frow) (tcol, trow)) then True
		else False
		
isLegalPawnMove (fcol,frow) (tcol,trow) (Black,whitePieces,blackPieces) =
	if ((hasWhite whitePieces (tcol,trow)) && ((trow == (frow - 1)) && ((abs ((ord fcol)-(ord tcol))) == 1))) then True
	else 
		if ((isEmpty (Black,whitePieces,blackPieces) (tcol,trow)) && ((trow == (frow - 1)) && (fcol == tcol))) then True
				else if ((isEmpty (Black,whitePieces,blackPieces) (tcol,trow)) && (frow == 7) && (trow == 5) && (isEmpty (Black,whitePieces,blackPieces) (tcol,6))) then True
					else False
	
isLegalPawnMove (fcol,frow) (tcol,trow) (White,whitePieces,blackPieces) =
	if ((hasBlack blackPieces (tcol,trow)) && ((trow == (frow + 1)) && ((abs ((ord fcol)-(ord tcol))) == 1))) then True
	else 
		if ((isEmpty (White,whitePieces,blackPieces) (tcol,trow)) && ((trow == (frow + 1)) && (fcol == tcol))) then True
				else if ((isEmpty (White,whitePieces,blackPieces) (tcol,trow)) && (frow == 2) && (trow == 4) && (tcol == fcol) && (isEmpty (Black,whitePieces,blackPieces) (tcol,3))) then True
					else False
	
isLegalQueenMove a b c = 
	if ((isLegalBishopMove a b c) || (isLegalRookMove a b c) || (isLegalKingMove a b c) || (isLegalPawnMove a b c)) then True
		else False

suggestMove piece board = getList 'a' 1 piece board ++ getList 'b' 1 piece board ++ getList 'c' 1 piece board ++ getList 'd' 1 piece board ++ getList 'e' 1 piece board++ getList 'f' 1 piece board++ getList 'g' 1 piece board++ getList 'h' 1 piece board
getList _ 9 _ _ = []
getList r c piece (_,whitePieces,blackPieces) = 
	if (contains piece whitePieces) then 
		if(isLegal piece (White,whitePieces,blackPieces) (r, c)) then [(r, c)] ++ getList r (c+1) piece (White,whitePieces,blackPieces) 
													else getList r (c+1) piece (White,whitePieces,blackPieces) 
	else 
		if(isLegal piece (Black,whitePieces,blackPieces) (r, c)) then [(r, c)] ++ getList r (c+1) piece (Black,whitePieces,blackPieces) 
													else getList r (c+1) piece (Black,whitePieces,blackPieces) 

removeByLoc:: Location -> [Piece] -> [Piece]
removeByLoc _ [] = []
removeByLoc location ((P loc):xs) = if (loc == location) then xs
										else [(P loc)] ++ removeByLoc location xs
removeByLoc location ((N loc):xs) = if (loc == location) then xs
										else [(N loc)] ++ removeByLoc location xs
removeByLoc location ((K loc):xs) = if (loc == location) then xs
										else [(K loc)] ++ removeByLoc location xs
removeByLoc location ((Q loc):xs) = if (loc == location) then xs
										else [(Q loc)] ++ removeByLoc location xs
removeByLoc location ((R loc):xs) = if (loc == location) then xs
										else [(R loc)] ++ removeByLoc location xs
removeByLoc location ((B loc):xs) = if (loc == location) then xs
										else [(B loc)] ++ removeByLoc location xs
removePiece:: Piece -> [Piece] -> [Piece]
removePiece _ [] = []
removePiece piece (x:xs) = if (piece == x) then removePiece piece xs
							else [x] ++ removePiece piece xs
addNewPiece:: Piece -> Location -> [Piece] -> [Piece]
addNewPiece (P loc) location array = array ++ [(P location)]
addNewPiece (N loc) location array = array ++ [(N location)]
addNewPiece (Q loc) location array = array ++ [(Q location)]
addNewPiece (K loc) location array = array ++ [(K location)]
addNewPiece (R loc) location array = array ++ [(R location)]
addNewPiece (B loc) location array = array ++ [(B location)]
  
transfer piece location arr = (addNewPiece piece location (removePiece piece arr))

move:: Piece -> Location -> Board -> Board  				
move piece location (White,whitePieces,blackPieces) = 
	if (contains piece blackPieces) then error ("This is White players turn, Black cant move.")
		else if (ncontains location (suggestMove piece (White,whitePieces,blackPieces))) then error ("Illegal move for piece")
			else if (isEmpty (White,whitePieces,blackPieces) location) then (Black,(transfer piece location whitePieces),blackPieces)
				else (Black,(transfer piece location whitePieces),(removeByLoc location blackPieces))
				
move piece location (Black,whitePieces,blackPieces) = 
	if (contains piece whitePieces) then error ("This is White players turn, Black cant move.")
		else if (ncontains location (suggestMove piece (White,whitePieces,blackPieces))) then error ("Illegal move for piece")
			else if (isEmpty (Black,whitePieces,blackPieces) location) then (White,whitePieces,(transfer piece location blackPieces))
				else (White,(removeByLoc location whitePieces),(transfer piece location blackPieces))
