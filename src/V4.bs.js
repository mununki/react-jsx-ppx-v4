// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Belt_Option from "rescript/lib/es6/belt_Option.js";
import * as JsxRuntime from "react/jsx-runtime";

function V4$Foo(props) {
  return JsxRuntime.jsx("div", {
              children: props.name
            });
}

var Foo = {
  make: V4$Foo
};

function V4$Bar(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                Belt_Option.getWithDefault(props.name, ""),
                props.children
              ]
            });
}

var Bar = {
  make: V4$Bar
};

function V4$Baz(props) {
  var name = props.name;
  var name$1 = name !== undefined ? name : "baz";
  return JsxRuntime.jsxs("div", {
              children: [
                name$1,
                props.children
              ],
              id: props.id2
            });
}

var Baz = {
  make: V4$Baz
};

var x = 1;

var a = {
  x: x
};

var b = {
  x: Belt_Option.map(x, (function (x) {
          return x;
        }))
};

function V4(props) {
  return Belt_Option.getWithDefault(props.b, "V4..");
}

var make = V4;

export {
  Foo ,
  Bar ,
  Baz ,
  x ,
  a ,
  b ,
  make ,
}
/* b Not a pure module */
