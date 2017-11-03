let rec fib n = (* n番目のフィボナッチ数 *)
  if n = 1 || n = 2
  then 1
  else fib (n - 1) + fib (n - 2) ;;

let fib2 n =
  let rec fib_pair n =
    if n = 1
    then (1, 0)
    else
      let (i, j) = fib_pair (n - 1) in
      (i + j, i)
    in
    let (i, _) = fib_pair n in i ;;

print_int (fib2 40)
