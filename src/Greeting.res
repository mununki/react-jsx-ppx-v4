@send external focus: Dom.element => unit = "focus"

module CustomTextInput = {
  @react.component
  let make = (~setInputRef) => {
    <div>
      <input type_="text" ref={ReactDOM.Ref.callbackDomRef(setInputRef)} />
    </div>
  }
}

@react.component
let make = () => {
  let textInput = React.useRef(Js.Nullable.null)
  let setInputRef = element => {textInput.current = element}

  <CustomTextInput setInputRef />
}
