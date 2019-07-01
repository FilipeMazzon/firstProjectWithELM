module Data.Question exposing (Questions)

type alias Questions =
    {
        question: String
        ,correct:String
        ,incorrect:List String
    }