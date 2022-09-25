module TestMemoCustomComparePropsNew = {
  @react.component
  let make = (~foo: string) => React.string(foo)

  let make = React.memoCustomCompareProps(make, (nextProps, currentProps) =>
    nextProps.foo == currentProps.foo
  )
}

// This used to work too
module TestMemoCustomComparePropsOld = {
  let memo = React.memoCustomCompareProps(
    _,
    // Previously, you could write `nextProps["foo"] == currentProps["foo"]`
    // Now this understandably gives the error `The record field foo can't be found.`
    (nextProps, currentProps) => nextProps.foo == currentProps.foo,
  )

  @react.component
  and make = memo((~foo: string) => React.string(foo))
}
