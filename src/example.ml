(* example.ml *)

let half_positive_integer (x: int) =
  let foobar =
    if x > 0
    then
      x / 2
    else
         (failwith "some error")        (* without type sig *)
      (* (failwith "some error" : int)  (* with type sig *)    *)
  in
  foobar
