module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map Char.isUpper list


isUpper : Char -> Bool
isUpper =
    Char.isUpper


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list



--HTML


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "{param}" ]
        , Html.h2 [] [ Html.text "{param}" ]
        , Html.h3 [] [ Html.text "{param}" ]
        , Html.h4 [] [ Html.text "{param}" ]
        , Html.h5 [] [ Html.text "{param}" ]
        , Html.h6 [] [ Html.text "{param}" ]
        , Html.div []
            [ Html.a [ Html.Attributes.href "https://upa.edu.mx/" ]
                [ Html.text "UPA" ]
            ]
        ]
