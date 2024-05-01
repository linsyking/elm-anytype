module AnyType.Any exposing (..)


type Any
    = AnyNone


encode : a -> Any
encode _ =
    AnyNone


decode : a -> Any -> a
decode dummy _ =
    dummy
