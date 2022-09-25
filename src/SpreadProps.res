@@jsxConfig({version: 4, mode: "classic"})
module A = {
  @react.component
  let make = (~x, ~y) => (x ++ y)->React.string
}

let p: A.props<_> = {x: "x+", y: "y+"}
let p0: A.props<_> = {x: "x0", y: "y0"}
let p1: A.props<_> = {x: "x1", y: "y1"}

// let _c0 = <A x="x" {...p} />

// ignore second one
// let _c0 = <A x="x" {...p0} {...p1} />

// only spread props
// let c1 = <A {...p} />

// reversed order
let _c2 = <A {...p} x="x" />
