module View.Question exposing (view)
import Html exposing (Html,div,text)
import Data.Question exposing (Question)
import View.Button
import View.Form

view: Question ->Html msg
view {question,correct,incorrect} =
    let
        answer =
            List.sort (correct :: incorrect)
    in
        div
            []
            [
                View.Form.group [text question],
                 answer
                    |> List.map View.Button.btn
                    |> List.intersperse(text " ")
                    |> View.Form.group
            ]