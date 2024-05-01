# Anytype in Elm

You can convert any type in Elm to `Any` and convert back again later.

You need to add the following code to your `index.html` **before** you call `Elm.Main.init`.

```js
var $linsyking$anytype$Any$encode = function (_v0) {
    return _v0;
};
var $linsyking$anytype$Any$decode = F2(
    function (dummy, _v0) {
        if (typeof (dummy) != typeof (_v0)) {
            return dummy
        } else {
            return _v0;
        }
    });
```