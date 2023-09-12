@@jsxConfig({version: 4, mode: "automatic"})

// module C2 = {
//   let a = "foo"
//   type props<'a> = {a?: 'a}

//   let make = ({a: ?_a_, _}: props<_>) => {
//     let a = switch _a_ {
//     | Some(a) => a
//     | None => a
//     }

//     React.string(a)
//   }
//   let make = {
//     let \"DefaultValueProp$C2" = (props: props<_>) => make(props)

//     \"DefaultValueProp$C2"
//   }
// }

// module C3 = {
//   type props<'disabled> = {disabled?: 'disabled}

//   let make = ({disabled: ?everythingDisabled_, _}: props<bool>) => {
//     let everythingDisabled = switch everythingDisabled_ {
//     | Some(everythingDisabled) => everythingDisabled
//     | None => false
//     }

//     {
//       React.string(everythingDisabled ? "true" : "false")
//     }
//   }
//   let make = {
//     let \"DefaultValueProp$C3" = (props: props<_>) => make(props)

//     \"DefaultValueProp$C3"
//   }
// }

module C2 = {
  let a = "foo"
  type props<'a> = {a?: 'a}

  let make = ({a: ?a__, _}: props<_>) => {
    let a = switch a__ {
    | Some(a) => a
    | None => a
    }

    React.string(a)
  }
  let make = {
    let \"DefaultValueProp$C2" = (props: props<_>) => make(props)

    \"DefaultValueProp$C2"
  }
}

module C3 = {
  type props<'disabled> = {disabled?: 'disabled}

  let make = ({disabled: ?everythingDisabled__, _}: props<bool>) => {
    let everythingDisabled = switch everythingDisabled__ {
    | Some(disabled) => disabled
    | None => false
    }

    {
      React.string(everythingDisabled ? "true" : "false")
    }
  }
  let make = {
    let \"DefaultValueProp$C3" = (props: props<_>) => make(props)

    \"DefaultValueProp$C3"
  }
}
