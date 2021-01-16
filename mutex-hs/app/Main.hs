module Main where

import Control.Concurrent
import Control.Concurrent.Async
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
    return sum $ forConcurrently (repeat 1000 1) idM