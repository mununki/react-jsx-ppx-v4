type t0 = {x?: string, y?: string}
let a0 = {x: "x"} // var a0 = {x: “x”}

type t1 = {x: option<string>, y: option<string>}
let a1 = {x: Some("x"), y: None} // var a1 = {x: “x”, y: undefined}

@obj
external makeObj: (~x: string=?, ~y: string, unit) => _ = ""

let a2 = makeObj(~y="path", ())
