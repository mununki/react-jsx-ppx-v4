@react.component
let make = (. ~a, ~b) => React.string(a ++ b)

type t = Foo({a: string})

type a = {a: string}
type b = {b: string}
type c = {a: string, b: string}

let a = {a: "a"}
let b = {b: "b"}
// let c = {...a, b: "b"}
