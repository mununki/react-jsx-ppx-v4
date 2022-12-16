module V4CA = {
  /** 테스트 let make: unit => React.element */
  @react.component
  /** 테스트 let make: unit => React.element */
  let make = () =>
    <div key="nopropswithkey-div" id="!!!" ariaBusy=true> {`!!!`->React.string} </div>
}

module V4C = {
  @react.component
  let make = () => <>
    <V4CA key=?Some("k") />
  </>
}
