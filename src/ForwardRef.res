module V4C = {
  module FancyInput = {
    @react.component
    let make = React.forwardRef((
      ~className=?,
      ~children,
      ref: Js.Nullable.t<ReactDOM.Ref.currentDomRef>,
    ) =>
      <div>
        <input
          type_="text"
          ?className
          ref=?{ref->Js.Nullable.toOption->Belt.Option.map(ReactDOM.Ref.domRef)}
        />
        children
      </div>
    )
  }

  @send external focus: Dom.element => unit = "focus"

  @react.component
  let make = () => {
    let input = React.useRef(Js.Nullable.null)

    let focusInput = () =>
      input.current->Js.Nullable.toOption->Belt.Option.forEach(input => input->focus)

    let onClick = _ => focusInput()

    <div>
      <FancyInput ref=input>
        <button onClick> {React.string("Click to focus")} </button>
      </FancyInput>
    </div>
  }
}

@react.component
let make = () => <V4C />
