module View.Question exposing (view)

import Data.Question exposing (Questions)

view: Questions ->String
view {question,correct} =
    "question:"
    ++question
    ++"answer"
    ++ correct