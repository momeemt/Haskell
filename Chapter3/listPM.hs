main = do
  let xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
  print([a+b | (a,b) <- xs])
  print(head' [4,5,6])
  print(head' "Hello")
  print(tell [1])
  print(tell [True,False])
  print(tell [1,2,3,4])
  -- print(tell [])

head' :: [a] -> a
head' [] = error "Can't call head on an empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty."
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ "and" ++ show y
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ "and" ++ show y
