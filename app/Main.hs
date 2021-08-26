module Main where
import System.IO
import System.Directory

main = do
    putStrLn "今日は何月何日だい？　ex)10月6日 -> 1006 "
    filenm <- getLine
    handle <- openFile ("filePlace/" ++ filenm ++ ".txt") WriteMode
    putStrLn "今日の辛かったこと書いちゃえ！　Ctrl + D で終わるよ！"
    content <- lines<$>getContents
    let as = map (++ "www") content
    mapM_ (hPutStrLn handle) as 
    hClose handle

    