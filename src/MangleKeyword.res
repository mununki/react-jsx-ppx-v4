@@jsxConfig({version: 3})

module C30 = {
  @obj external makeProps: (~_open: 't_open, ~key: string=?, unit) => {"_open": 't_open} = ""

  let make = @warning("-16") (~_open) => React.string(_open)
  let make = {
    let \"MangleKeyword$C30" = (\"Props": {"_open": 't_open}) => make(~_open=\"Props"["_open"])
    \"MangleKeyword$C30"
  }
}
module C31 = {
  @obj external makeProps: (~_open: string, ~key: string=?, unit) => {"_open": string} = ""
  external make: React.componentLike<{"_open": string}, React.element> = "default"
}

let c30 = React.createElement(C30.make, C30.makeProps(~_open="x", ()))
let c31 = React.createElement(C31.make, C31.makeProps(~_open="x", ()))

@@jsxConfig({version: 4, mode: "classic"})

module C4C0 = {
  type props<'t_open, 't_type> = {
    @as("open") _open: 't_open,
    @as("type") _type: 't_type,
  }

  let make = ({@as("open") _open, @as("type") _type, _}: props<'t_open, string>) =>
    React.string(_open)
  let make = {
    let \"MangleKeyword$C4C0" = (props: props<_>) => make(props)

    \"MangleKeyword$C4C0"
  }
}
module C4C1 = {
  type props<'t_open, 't_type> = {
    @as("open") _open: 't_open,
    @as("type") _type: 't_type,
  }

  external make: @as("open") React.componentLike<props<string, string>, React.element> = "default"
}

let c4c0 = React.createElement(C4C0.make, {_open: "x", _type: "t"})
let c4c1 = React.createElement(C4C1.make, {_open: "x", _type: "t"})

@@jsxConfig({version: 4, mode: "automatic"})

module C4A0 = {
  type props<'t_open, 't_type> = {
    @as("open") _open: 't_open,
    @as("type") _type: 't_type,
  }

  let make = ({@as("open") _open, @as("type") _type, _}: props<'t_open, string>) =>
    React.string(_open)
  let make = {
    let \"MangleKeyword$C4A0" = (props: props<_>) => make(props)

    \"MangleKeyword$C4A0"
  }
}
module C4A1 = {
  type props<'t_open, 't_type> = {
    @as("open") _open: 't_open,
    @as("type") _type: 't_type,
  }

  external make: @as("open") React.componentLike<props<string, string>, React.element> = "default"
}

let c4a0 = React.jsx(C4A0.make, {_open: "x", _type: "t"})
let c4a1 = React.jsx(C4A1.make, {_open: "x", _type: "t"})
