module CalcLib.Calc where

import CalcLib.Expr
import CalcLib.ParserExpr
import Data.Maybe

-- pretty show the result like `2.0 + 2.0 = 4.0`
prettyEval :: String -> String
prettyEval s =
  let e = parse $ filter (\x -> x /= ' ') s
   in case e of
        Nothing -> "Invalide input"
        Just a -> (show a) ++ " = " ++ (show $ evalExpr a)

-- return the value of the result
eval :: String -> Maybe Double
eval = fmap evalExpr . parse . filter (\x -> x /= ' ')

result :: String -> String
result s =
  let e = parse $ filter (\x -> x /= ' ') s
   in case e of
        Nothing -> "Invalide input"
        Just a -> (show $ evalExpr a)
