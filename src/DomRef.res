module V4C = {
  @send external focus: Dom.element => unit = "focus"

  @react.component
  let make = () => {
    let input = React.useRef(Js.Nullable.null)

    let focusInput = () =>
      input.current->Js.Nullable.toOption->Belt.Option.forEach(input => input->focus)

    let onClick = _ => focusInput()

    <div>
      <input ref={ReactDOM.Ref.domRef(input)} />
      <button onClick> {React.string("Click to focus")} </button>
    </div>
  }
}

@react.component
let make = () => <V4C />
