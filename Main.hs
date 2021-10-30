module Main where

import CalcLib.Calc
import System.Environment
import System.IO

main :: IO ()
main = do
  args <- getArgs
  case head args of
    "-r" -> putStrLn $ result (args !! 1)
    otherwise -> putStrLn $ prettyEval $ head args
