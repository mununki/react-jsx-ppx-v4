let optionMap = x =>
  switch x {
  | None => None
  | Some(v) => Some(v)
  }

module A = {
  @react.component
  let make = (~name=?, ~id=?) => <div ?id ?name> {`component A`->React.string} </div>
}

module WithoutParens = {
  @react.component
  let make = (~name=?) => {
    <A
      name=?{
        let _ = ()
        name->optionMap
      }
    />
  }
}
