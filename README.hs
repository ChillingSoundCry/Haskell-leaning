# Haskell-leaning
import Data.List
import System.IO
import System.Random
name=["a","b","c","d","e","f","g"]
num=[90,87,56,89,70,87,66]
find::String->Int->IO()
find n i = if (n == name!!i)
	            then
	            	putStrLn(name!!i ++ ":" num!!i)
	            else
	            	do  if(i==length(name)) then putStrLn("没有查找到") else do  find(n i+1)

begin::String->IO()
begin "1"= do
	        putStrLn("名字"++show(name))
	        putStrLn("分数"++show(num))
begin "2"= do putStrLn("请输入要搜索的名字")
              n<-getLine 
              find(n,0)
main::IO()	
main= do putStrLn "---------学生成绩管理系统------------"
         putStrLn "--输入1查看---------------输入2搜索--"
         putStrLn "--输入3录入---------------输入4删除--"
         putStrLn "------------------------------------"
         line <-  getLine
         begin line
         main

         
