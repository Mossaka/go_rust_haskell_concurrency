module Main where

import Control.Concurrent.Async
import Control.Monad (msum)
-- main :: IO ()
-- main = do
--     m <- newEmptyMVar
--     putMVar m 0
--     threadIds <- mapM forkIO (replicate 1000 (inc m))
--     m_ <- takeMVar m
--     putStrLn (show m_)

-- inc :: Num a => MVar a -> IO ()
-- inc m = do
--     modifyMVar_ m (\num -> return $ num + 1)

main :: IO ()
main = do 
    result <- forConcurrently (replicate 1000 1) (\x -> return x);
    putStrLn $ show $ sum result
