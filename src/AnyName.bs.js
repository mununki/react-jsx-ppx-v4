// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Caml_option from "rescript/lib/es6/caml_option.js";

function optionMap(x) {
  if (x !== undefined) {
    return Caml_option.some(Caml_option.valFromOption(x));
  }
  
}

function AnyName$A(props) {
  var tmp = {};
  if (props.id !== undefined) {
    tmp.id = Caml_option.valFromOption(props.id);
  }
  if (props.name !== undefined) {
    tmp.name = Caml_option.valFromOption(props.name);
  }
  return React.createElement("div", tmp, "component A");
}

var A = {
  make: AnyName$A
};

function AnyName$WithoutParens(props) {
  return React.createElement(AnyName$A, {
              name: optionMap(props.name)
            });
}

var WithoutParens = {
  make: AnyName$WithoutParens
};

export {
  optionMap ,
  A ,
  WithoutParens ,
}
/* react Not a pure module */
