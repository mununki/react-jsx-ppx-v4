module Foo = {
  @react.component
  let make = (~x, ~y) => React.string(x ++ y)
}

module HasChildren = {
  @react.component
  let make = (~children) => <> children </>
}

@react.component
let make = () => <>
  <Foo key="k1" x="x" y="y" />
  <Foo x="x" y="y" />
  <HasChildren key="k2">
    <Foo x="x" y="y" />
  </HasChildren>
  <HasChildren>
    <Foo x="x" y="y" />
  </HasChildren>
</>
