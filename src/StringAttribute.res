module V3 = {
  @obj
  external makeProps: (
    ~barStyle: @string
    [
      | #default
      | @as("light-content") #lightContent
      | @as("dark-content") #darkContent
    ]=?,
    ~key: string=?,
    unit,
  ) => {
    "barStyle": option<
      @string
      [
        | #default
        | @as("light-content") #lightContent
        | @as("dark-content") #darkContent
      ],
    >,
  } = ""

  @module("react-native")
  external make: React.componentLike<
    {
      "barStyle": option<
        @string
        [
          | #default
          | @as("light-content") #lightContent
          | @as("dark-content") #darkContent
        ],
      >,
    },
    React.element,
  > = "StatusBar"
}

module V4 = {
  type props<'barStyle> = {barStyle?: 'barStyle}

  @module("react-native")
  external make: React.componentLike<
    props<
      [
        | #default
        | #"light-content"
        | #"dark-content"
      ],
    >,
    React.element,
  > = "StatusBar"
}
