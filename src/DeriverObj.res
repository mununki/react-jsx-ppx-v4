// @live
// type input_ShippingFeePolicyMutationInput = {
//   amount: int,
//   freeShippingThreshold: option<int>,
//   quantityStep: option<int>,
//   @as("type") type_: [#CONDITIONAL_FREE | #FREE | #NOT_APPLICABLE | #PAID | #QUANTITY_BASED],
// }

// @live @obj
// external make_shippingFeePolicyMutationInput: (
//   ~amount: int,
//   ~freeShippingThreshold: int=?,
//   ~quantityStep: int=?,
//   @as("type")
//   ~_type: [
//     | #CONDITIONAL_FREE
//     | #FREE
//     | #NOT_APPLICABLE
//     | #PAID
//     | #QUANTITY_BASED
//   ],
//   unit,
// ) => input_ShippingFeePolicyMutationInput = ""

// let m = make_shippingFeePolicyMutationInput(~amount=0, ~_type=#FREE, ())

// @live
// type input_ShippingFeePolicyMutationInput = {
//   amount: int,
//   freeShippingThreshold: option<int>,
//   quantityStep: option<int>,
//   @as("type") type_: [#CONDITIONAL_FREE | #FREE | #NOT_APPLICABLE | #PAID | #QUANTITY_BASED],
// }

// @live @obj
// external make_shippingFeePolicyMutationInput: (
//   ~amount: int,
//   ~freeShippingThreshold: int=?,
//   ~quantityStep: int=?,
//   ~_type: [
//     | #CONDITIONAL_FREE
//     | #FREE
//     | #NOT_APPLICABLE
//     | #PAID
//     | #QUANTITY_BASED
//   ],
//   unit,
// ) => input_ShippingFeePolicyMutationInput = ""

// let m = make_shippingFeePolicyMutationInput(~amount=0, ~_type=#FREE, ())

// type a = {@as("type") "_type": string}

// let m1: a = {"_type": "?"}

// let m2: input_ShippingFeePolicyMutationInput = {
//   amount: 0,
//   freeShippingThreshold: None,
//   quantityStep: None,
//   type_: #FREE,
// }

// type t0 = {@as("type00") type_: string}

// type o0 = {@as("type") "type_": string}

// @obj
// external make: (~type_: string=?) => t0 = ""

// @obj
// external make2: (@as("type") ~type_: string=?) => t0 = ""

// let t0: t0 = {type_: "t0"}

// let t1 = make(~type_="t1")

// let t2 = make2(~type_="t2")

// let o0: o0 = {"type_": "o0"}

type t0 = {@as("a") type_: string}

@obj
external make1: (~type_: string=?) => t0 = ""

@obj
external make2: (@as("b") ~type_: string=?) => t0 = ""

let t0 = {type_: "t0"}

let t1 = make1(~type_="t1")

let t2 = make2(~type_="t2")

let f1 = make1

let f2 = make2
