let [@inline] error_ZeroInput     : int = 1
let [@inline] error_NegativeInput : int = 2


let half_positive_integer (x: int) =
  let foobar =
  if x < 0 then
    MyModuleWithFailures.failwith_error_code error_NegativeInput (* always considered uncovered, marked as red *)
  else if x = 0 then
    MyModuleWithFailures.failwith_error_code error_ZeroInput     (* always considered uncovered, marked as red *)
  else
    x / 2
  in
  let _ = Printf.printf "debugging" in
  foobar
