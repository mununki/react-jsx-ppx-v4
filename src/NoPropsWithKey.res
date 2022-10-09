module V4CA = {
  @react.component
  let make = () =>
    <div key="nopropswithkey-div" id="!!!" ariaBusy=true> {`!!!`->React.string} </div>
}

module V4C = {
  @react.component
  let make = () => <>
    <V4CA key="k" />
  </>
}
