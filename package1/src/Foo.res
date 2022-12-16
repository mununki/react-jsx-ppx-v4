let x = 1

module Context = {
  type t

  type contextShape = {"environment": Environment.t}

  @module("react-relay")
  external context: React.Context.t<option<contextShape>> = "ReactRelayContext"

  module Provider = {
    @react.component
    let make = (~environment: Environment.t, ~children) => {
      let provider = React.Context.provider(context)
      React.createElement(
        provider,
        {"value": Some({"environment": environment}), "children": children},
      )
    }
  }
}
