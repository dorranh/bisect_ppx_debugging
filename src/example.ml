(* example.ml *)

let error_ZeroInput     : int = 1
let error_NegativeInput : int = 2

let failwith_error_code (i: int) : 'a = Stdlib.failwith (string_of_int i)

let half_positive_integer (x: int) =
  let foobar =
    if x < 0 then
      failwith_error_code error_NegativeInput (* always considered uncovered, marked as red *)
    else if x = 0 then
      failwith_error_code error_ZeroInput     (* always considered uncovered, marked as red *)
    else
      x / 2
  in
  foobar
