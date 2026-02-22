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


headers : String -> Html.Html msg
headers algo =
    Html.div []
        [ Html.h1 [] [ Html.text algo ]
        , Html.h2 [] [ Html.text algo ]
        , Html.h3 [] [ Html.text algo ]
        , Html.h4 [] [ Html.text algo ]
        , Html.h5 [] [ Html.text algo ]
        , Html.h6 [] [ Html.text algo ]
        ]


hyperlink : String -> String -> Html.Html msg
hyperlink link nose =
    Html.a [ Html.Attributes.href link ] [ Html.text nose ]


main : Html.Html msg
main =
    Html.div []
        [ headers "Titulos"
        , hyperlink "https://upa.edu.mx/" "Mi escola"
        ]
