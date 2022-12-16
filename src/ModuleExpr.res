module type __BeltList0__ = module type of Belt.List
// module M = unpack(await Js.import(module(Belt.List: __BeltList0__)))

module N = @res.await Belt.List

// module O = Belt.List

// module P = O

// let f = M.forEach
// let g = N.forEach

// module Memo = {
//   type t
//   let b = b => b
// }

// module M = @aaa Belt.List
// module N = @bbb Memo

// let a = M.forEach
// let b = N.b

// module M = @res.await Belt.List
// module type BeltList1 = {}
// let forEach = M.forEach
