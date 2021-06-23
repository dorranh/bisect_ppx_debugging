(* tests.ml *)

open OUnit2
open Example

let suite =
  "Example Tests" >::: [
    "X" >:: (fun _ ->
      assert_raises
        (Failure (string_of_int error_ZeroInput))
        (fun () -> half_positive_integer 0)
    );

    "Y" >:: (fun _ ->
      assert_raises
        (Failure (string_of_int error_NegativeInput))
        (fun () -> half_positive_integer (-1))
    );

    "Z" >:: fun _ -> (
      assert_equal
        50
        (half_positive_integer 101)
      )
  ]

let () = run_test_tt_main suite
