module Main exposing (..)

import Html exposing (Html,text)

import Data.Difficulty exposing (Difficulty,default)
import Data.Question exposing (Questions)
import View.Question exposing (view)


type alias Model =
    {
        difficulty: Difficulty,
        questions: List Questions
    }
toUpperLambda =
    (\str -> String.toUpper str)



init: Model
init =
    Model
        default
        [Questions
           "question 1"
           "correct Answer 1"
           []
        ]


main: Html msg

main=
   init.questions
        |> List.map View.Question.view
        |> String.join ", "
        |> text
