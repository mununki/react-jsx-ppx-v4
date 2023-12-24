module FancyInput = {
  @react.component
  let make = (~children, ~inputRef: ReactDOM.domRef) =>
    <div>
      <input type_="text" ref=inputRef />
      children
    </div>
}

@send external focus: Dom.element => unit = "focus"

@react.component
let make = () => {
  let input = React.useRef(Js.Nullable.null)

  let focusInput = () =>
    input.current
    ->Js.Nullable.toOption
    ->Belt.Option.forEach(input => input->focus)

  let onClick = _ => focusInput()

  <div>
    <FancyInput inputRef={ReactDOM.Ref.domRef(input)}>
      <button onClick> {React.string("Click to focus")} </button>
    </FancyInput>
  </div>
}
