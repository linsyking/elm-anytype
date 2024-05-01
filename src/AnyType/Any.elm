module AnyType.Any exposing (Any, encode, decode)

{-|


# Anytype in Elm

This module provides a type called `Any` that can be converted from and to any type in Elm.

@docs Any, encode, decode

-}


{-| The Any type
-}
type Any
    = AnyNone


{-| Encode a value to Any type
-}
encode : a -> Any
encode _ =
    AnyNone


{-| Decode an Any type data to a value.

You need to provide a dummy value to let the Elm compiler know the type.

-}
decode : a -> Any -> a
decode dummy _ =
    dummy
