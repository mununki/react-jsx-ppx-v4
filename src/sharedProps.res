type sharedProps<'a> = {x: 'a, y: string}

@@jsxConfig({version: 4, mode: "classic"})

module V4C1 = {
  type props = sharedProps<string>

  let make = ({x, y, _}: props) => React.string(x ++ y)
  let make = {
    let \"SharedProps$V4C1" = props => make(props)

    \"SharedProps$V4C1"
  }
}

module V4C2 = {
  type props<'a> = sharedProps<'a>

  let make = ({x, y, _}: props<'a>) => React.string(x ++ y)
  let make = {
    let \"SharedProps$V4C2" = (props: props<_>) => make(props)

    \"SharedProps$V4C2"
  }
}

module V4C3 = {
  type props<'a> = sharedProps<'a>

  external make: React.componentLike<props<'a>, React.element> = "default"
}

@@jsxConfig({version: 4, mode: "automatic"})

module V4A1 = {
  type props = sharedProps<string>

  let make = ({x, y, _}: props) => React.string(x ++ y)
  let make = {
    let \"SharedProps$V4A1" = props => make(props)

    \"SharedProps$V4A1"
  }
}

module V4A2 = {
  type props<'a> = sharedProps<'a>

  let make = ({x, y, _}: props<'a>) => React.string(x ++ y)
  let make = {
    let \"SharedProps$V4A2" = (props: props<_>) => make(props)

    \"SharedProps$V4A2"
  }
}

module V4A3 = {
  type props<'a> = sharedProps<'a>

  external make: React.componentLike<props<'a>, React.element> = "default"
}
