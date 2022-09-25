module ThemeContext = {
  type theme = Light | Dark
  let context = React.createContext(Dark)

  module Provider = {
    let make = React.Context.provider(context)
  }
}

module Button = {
  @react.component
  let make = (~theme) => {
    let className = switch theme {
    | ThemeContext.Light => "theme-light"
    | Dark => "theme-black"
    }
    <button className> {React.string("Click me")} </button>
  }
}

module ThemedButton = {
  @react.component
  let make = () => {
    let theme = React.useContext(ThemeContext.context)

    <Button theme />
  }
}

module Toolbar = {
  @react.component
  let make = () => {
    <div>
      <ThemedButton />
    </div>
  }
}

@react.component
let make = () => {
  <ThemeContext.Provider value=ThemeContext.Light>
    <div>
      <Toolbar />
    </div>
  </ThemeContext.Provider>
}
