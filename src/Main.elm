module Main exposing (..)

import Html exposing (Html,text,div,h1)

import Data.Difficulty exposing (Difficulty)
import Data.Question exposing (Question)
import View.Question exposing (view)


type alias Model =
    {
        difficulty: Difficulty,
        questions: List Question
    }
toUpperLambda =
    (\str -> String.toUpper str)



init: Model
init =
    Model
        Data.Difficulty.default
        [Question
           Nothing
           "question 1"
           "correct Answer 1"
           ["false"]
        ]


main: Html msg

main=
   div [] (List.map View.Question.view init.questions)
