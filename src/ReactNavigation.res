module SomeLib = (
  T: {
    type props<'navigation, 'route> = {
      navigation: 'navigation,
      route: 'route,
    }
    let make: React.component<props<_>>
  },
) => {
  type navigation
  type route

  type screenProps = T.props<navigation, route>

  type screenComponent = React.component<screenProps>

  module Screen = {
    @react.component @module("some-lib")
    external make: (~component: screenComponent) => React.element = "Screen"
  }
}

module SomeComponent = {
  @react.component
  let make = (~navigation, ~route) => {
    let _ = (navigation, route)
    React.string("Some component")
  }
}

module SomeComp = SomeLib(SomeComponent)

let render = () => <SomeComp.Screen component=SomeComponent.make />
