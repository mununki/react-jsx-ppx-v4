type props<'msg> = {msg: 'msg}
@module("@foo/bar")
external make: props<_> => React.element = "SomeComponent"
