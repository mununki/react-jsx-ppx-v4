// module SomeComp2 = {
//   type props = {x: int}
//   @module("SomeModule")
//   external make: props => React.element = "SomeComp2"
// }

// module C = {
//   type props<'x, 'render> = {x: 'x, render: 'render}

//   let make = ({x, render, _}: props<'x, 'x => React.element>) => render(x)
//   let make = {
//     let \"Abstract$C" = React.component((props: props<_>) => make(props))

//     \"Abstract$C"
//   }
// }

// let _ = <C x=1 render={v => React.int(v)} />

