@val external import: 'a => Js.Promise.t<'m> = "import"

@react.component
let make = () => {
  <RescriptReactErrorBoundary fallback={_ => <div> {`error!`->React.string} </div>}>
    <React.Suspense fallback={<div> {`loading..`->React.string} </div>}>
      <div>
        <V4 />
        {`div!`->React.string}
      </div>
    </React.Suspense>
  </RescriptReactErrorBoundary>
}
