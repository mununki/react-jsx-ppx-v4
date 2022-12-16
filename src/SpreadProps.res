@@jsxConfig({version: 4, mode: "classic"})

module A = {
  @react.component
  let make = (~x, ~y) => (x ++ y)->React.string
}

let p: A.props<_> = {x: "x+", y: "y+"}
let p0: A.props<_> = {x: "x0", y: "y0"}
let p1: A.props<_> = {x: "x1", y: "y1"}

// let _c0 = <A x="x" {...p} />

// ignore second one
// let _c0 = <A x="x" {...p0} {...p1} />

// only spread props
// let c1 = <A {...p} />

// reversed order
// let _c2 = <A {...p} x="x" />

// domProps
// let dp: ReactDOM.domProps = {id: "id", name: "ReScript"}
// let _c3 = <div {...dp} />
// let _c4 = <div {...dp} x="x" method="" />

/* Copyright (C) 2022- Authors of ReScript
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * In addition to the permissions granted to you by the LGPL, you may combine
 * or link a "work that uses the Library" with a publicly distributed version
 * of this file to produce a combined library or application, then distribute
 * that combined work under the terms of your choosing, with no requirement
 * to comply with the obligations normally placed on you by section 4 of the
 * LGPL version 3 (or the corresponding section of a later version of the LGPL
 * should you choose to use a later version).
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA. */

type style = JsxDOMStyle.t
type domRef
