# Chessboard System in Haskell

This project is a chessboard system implemented in Haskell that defines types for `Location`, `Player`, `Piece`, and `Board`. The system includes functionality for handling chess pieces, validating moves, and visualizing the board state.

## Table of Contents

1. [Overview](#overview)
2. [Types and Data Structures](#types-and-data-structures)
3. [Functions](#functions)
4. [Usage](#usage)
5. [Example](#example)
6. [License](#license)

## Overview

This Haskell-based chessboard system models the game of chess, allowing for various operations such as placing pieces on the board, checking if a piece can be moved, and displaying the current state of the board. It supports basic operations such as moving pieces, detecting if a square is empty, and validating valid moves.

The system also allows for managing chess pieces for both players and checking the legality of moves based on chess rules. It can visualize the current state of the chessboard and provides a structured way to handle the chess game logic.

## Types and Data Structures

The system defines the following types and data structures:

- **Location:** Represents a square on the chessboard, consisting of a column (A-H) and a row (1-8).
- **Player:** Represents a player, either "White" or "Black".
- **Piece:** Defines the standard chess pieces (King, Queen, Bishop, Knight, Rook, Pawn).
- **Board:** Represents the chessboard as a 2D list of optional pieces, with `Nothing` representing an empty square and `Just Piece` representing a piece placed on the square.

## Functions

The system includes various functions to interact with the chessboard and pieces, such as:

- Functions to initialize the board with pieces in their starting positions.
- Functions to check if a piece can legally move to a target square.
- Functions to update the board when a piece is moved.
- Functions to check the game state (e.g., checkmate, stalemate).

## Usage

To use the chessboard system, you'll need to have Haskell installed. After cloning the repository, you can compile and run the program using GHC (Glasgow Haskell Compiler) or use GHCi for interactive use.

1. Clone the repository.
2. Compile the project using GHC.
3. Run the compiled program or load the project into GHCi to interact with the system.

## Example

Here is a simple example of how to use the system:

1. Initialize the board.
2. Make a move (e.g., move a pawn).
3. Print the updated board to see the changes.

The system allows for interactive moves and outputs the updated chessboard after each action, helping visualize the game progress.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
