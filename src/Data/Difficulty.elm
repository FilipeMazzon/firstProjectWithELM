module Data.Difficulty exposing (Difficulty,default)

type Difficulty
    = Any
    | Easy
    | Medium
    | Hard
default : Difficulty
default =
    Any
difficultyList: List (String,Difficulty)
difficultyList  =
    [
        ("Any",Any),
        ("Easy",Easy),
        ("Medium",Medium),
        ("Hard",Hard)
    ]