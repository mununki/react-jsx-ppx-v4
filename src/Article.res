// @react.component
// let make = (~title: string, ~visitorCount: int, ~children: React.element) => {
//   let visitorCountMsg = "You are visitor number: " ++ Belt.Int.toString(visitorCount)
//   <div>
//     <div> {React.string(title)} </div>
//     <div> {React.string(visitorCountMsg)} </div>
//     children
//   </div>
// }

type x = {a: int, b?: int}
let x = {a: 1, b: ?Some(3)}

let _ = switch x {
| {a: 1, b: ?Some(3)} => 1
| {a} => a
}

module C1 = {
  type props<'priority, 'text> = {
    priority: 'priority,
    text?: 'text,
  }

  let make = ({priority: p, ?text, _}: props<'priority, 'text>) => {
    let text = switch text {
    | Some(text) => text
    | None => "Test"
    }

    React.string(p ++ text)
  }
  let make = {
    let \"AliasProps$C1" = (props: props<_>) => make(props)

    \"AliasProps$C1"
  }
}
