(* open Printf *)
(* (* let rec remove_dup list = *) *)
(* (*   match list with *) *)
(* (*   | [] -> [] *) *)
(* (*   | [ x ] -> [ x ] *) *)
(* (*   | first :: second :: tl -> *) *)
(* (*       if first = second then remove_dup (second :: tl) *) *)
(* (*       else first :: remove_dup (second :: tl) *) *)
(**)
(* let rec read_and_acum y = *)
(*   let line = In_channel.input_line In_channel.stdin in *)
(*   match line with None -> y | Some x -> read_and_acum (y +. Float.of_string x) *)
(**)
(* let () = *)
(*   (* let i = ref 0 in *) *)
(*   (* while !i < 10 do *) *)
(*   (*   printf "%d \n" !i; *) *)
(*   (*   i := !i + 1 *) *)
(*   (* done; *) *)
(*   (* for i = 0 to 9 do *) *)
(*   (*   printf "%d \n" (i + 1) *) *)
(*   (* done; *) *)
(*   (* let rec hello (i : int) = *) *)
(*   (*   if i < 10 then ( *) *)
(*   (*     printf "%d \n" i; *) *)
(*   (*     hello (i + 1)) *) *)
(*   (*   else () *) *)
(*   (* in *) *)
(*   (* hello 0 *) *)
(*   (*   let result = remove_dup [ 1; 1; 2; 3; 4; 5; 3; 21; 3; 2 ] in *) *)
(*   (*   List.iter (fun x -> printf "%d " x) result *) *)
(*   (* ;; *) *)
(*   printf "Total: %F" (read_and_acum 0.) *)

open Printf

(* let rec last list = *)
(*   match list with [] -> None | [ x ] -> Some x | _ :: tl -> last tl *)

(* let rec last_two list = *)
(*   match list with *)
(*   | [] | [ _ ] -> None *)
(*   | [ x; y ] -> Some (x, y) *)
(*   | _ :: second :: tl -> last_two (second :: tl) *)

(* let rec nth_elem n list = *)
(*   match list with *)
(*   | [] -> None *)
(*   | hd :: tl -> if n = 0 then Some hd else nth_elem (n - 1) tl *)

(* let rec length_of_list n list = *)
(*   match list with [] -> n | _ :: t -> length_of_list (n + 1) t *)

let rec reverse_list list result_list =
  match list with
  | [] -> result_list
  | hd :: tl -> reverse_list tl (hd :: result_list)

let palindrome list = if list = reverse_list list [] then true else false

let () =
  (* let result = last [ 1; 2; 4; 2; 1; 43 ] in *)
  (* match result with None -> printf "None" | Some x -> printf "%d" x *)
  (* let result = last_two [ 1; 2; 4; 2; 561; 43 ] in *)
  (* match result with None -> printf "None" | Some (x, y) -> printf "%d %d" x y *)
  (* let result = nth_elem 10 [ 1; 2; 3; 4 ] in *)
  (* match result with None -> printf "None" | Some x -> printf "%d" x *)
  (* let result = length_of_list 0 [ 1; 2; 3; 4; 5; 34 ] in *)
  (* printf "%d" result *)
  (* let result = reverse_list [ 1; 2; 3; 4; 5 ] [] in *)
  (* List.iter (fun x -> printf "%d " x) result *)
  let result = palindrome [ "x"; "a"; "m"; "a"; "x" ] in
  match result with
  | true -> printf "is a palindrome"
  | false -> printf "not a palindrome"

