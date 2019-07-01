module View.Question exposing (view)
import Html exposing (Html,div,text)
import Data.Question exposing (Question)

view: Question ->Html msg
view {question,correct,incorrect} =
    let
        answer =
            List.sort (correct :: incorrect)
    in
        div
            []
            [
                text question,
                div
                    []
                    (
                        answer
                        |> List.map text
                        |> List.intersperse(text " ")
                    )
            ]