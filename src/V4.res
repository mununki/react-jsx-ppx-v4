module Foo = {
  @react.component
  let make = (~name as y: string) => {
    <div> {y->React.string} </div>
  }
}

module Bar = {
  @react.component
  let make = (~name=?, ~children) => {
    <div>
      {name->Belt.Option.getWithDefault("")->React.string}
      children
    </div>
  }
}

module Baz = {
  @react.component
  let make = (~name="baz", ~id2=?, ~children) => {
    <div id=?{id2}>
      {name->React.string}
      children
    </div>
  }
}

type x = {x?: int}
let x = Some(1)

let a = {x: ?x}
let b = {x: ?Option.map(x, x => x)}

@react.component
let make = (~b=?) => {
  React.string(b->Option.getWithDefault("V4.."))
}
