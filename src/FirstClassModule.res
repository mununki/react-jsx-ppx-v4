// original

@@jsxConfig({version: 3})

module Select = {
  module type T = {
    type key
    type t
  }

  @react.component
  let make = (
    type a key,
    ~model as module(T: T with type t = a and type key = key),
    ~selected: option<key>,
    ~onChange: option<key> => unit,
    ~items: array<a>,
  ) => {
    let _ = (selected, onChange, items)
    <div />
  }
}

// module Select = {
//   module type T = {
//     type key
//     type t
//   }
//   type props<'model, 'selected, 'onChange, 'items> = {
//     model: 'model,
//     selected: 'selected,
//     onChange: 'onChange,
//     items: 'items,
//   }

//   let make = (
//     {model, selected, onChange, items, _}: props<
//       module(T with type t = '\"type-a" and type key = '\"type-key"),
//       option<'\"type-key">,
//       option<'\"type-key"> => unit,
//       array<'\"type-a">,
//     >,
//   ) => {
//     let _ = (model, selected, onChange, items)
//     ReactDOM.createDOMElementVariadic("div", [])
//   }
//   let make = {
//     let \"FirstClassModules$Select" = (props: props<_>) => make(props)

//     \"FirstClassModules$Select"
//   }
// }

// module Select = {
//   module type T = {
//     type key
//     type t
//   }

//   @react.component @module("c")
//   external make: (
//     ~model: module(T with type t = 'a and type key = 'key),
//     ~selected: option<'key>,
//     ~onChange: option<'key> => unit,
//     ~items: array<'a>,
//   ) => React.element = "default"
// }
