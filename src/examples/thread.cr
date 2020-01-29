
-> a b c
-> a (b c)
->> a (b c)

-> xs
  .map $ \ (x) (+ x 1)
  .filter $ \ (x) (> x 0)
  .join ":\n"

