# Anytype in Elm

You can convert any type in Elm to `Any` and convert back again later.

You need to change the following two functions in the generated javascript files (you can write a script to automatically do this after compilation):

```js
var $linsyking$elm_anytype$AnyType$Any$encode = function (_v0) {
    return _v0;
};
var $linsyking$elm_anytype$AnyType$Any$decode = F2(
    function (dummy, _v0) {
        return _v0;
    });
```

## Example

```elm
data1 : Any
data1 =
    Any.encode 2


data2 : Any
data2 =
    Any.encode "asd"


main : Html.Html msg
main =
    Html.text (Any.decode "" data2 ++ String.fromInt (Any.decode 0 data1) ++ Any.decode "" data1)
```

This will output "asd22".

## Error checking

You may change your `decode` function to check type equality (for basic types):

```js
var $linsyking$elm_anytype$AnyType$Any$decode = F2(
    function (dummy, _v0) {
        if (typeof (dummy) === typeof (_v0)){
            return _v0;
        }else{
            return dummy;
        }
    });
```

However, this cannot check object type equality.