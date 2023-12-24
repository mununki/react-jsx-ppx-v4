// module M = await Belt.Map.Int

// let f5 = async () => {
//   module A = await Belt.Array
//   module O = await Belt.Option
//   (A.forEach, O.forEach)
// }

// let f6 = async () => {
//   let a = 0
//   and b = {
//     module MS = await Belt.Map.String
//     MS.forEach
//   }
//   module A = await Belt.Array
//   (a, b, A.forEach)
// }

// module M1 = await Belt.Map.Int

// let f7 = async () => {
//   if true {
//     module MI = await Belt.Map.Int
//     1
//   } else {
//     module MI = await Belt.Map.Dict
//     0
//   }
// }

// let f8 = (~a, ~b=?) =>
//   switch b {
//   | Some(b) => a + b
//   | None => a
//   }

