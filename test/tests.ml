(* tests.ml *)

open OUnit2
open Example

let suite =
  "Tests" >::: [
    "Y" >:: (fun _ ->
      assert_equal
        50
        (half_positive_integer 101)
    );
  ]

let () = run_test_tt_main suite
