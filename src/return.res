module M = {
  type props<'msg> = {msg: 'msg}
  @module("@foo/bar")
  external make: React.component<props<_>> = "SomeComponent"
}

module MM = {
  type props<'msg> = {msg: 'msg}
  @module("@foo/bar")
  external make: props<_> => React.element = "SomeComponent"
}
