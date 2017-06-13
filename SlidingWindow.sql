SELECT DateAdd(minute,-5,System.TimeStamp) AS WinStartTime, System.TimeStamp AS WinEndTime, TollId, COUNT(*)   
FROM Input TIMESTAMP BY EntryTime  
GROUP BY TollId, SlidingWindow(minute, 5)  
HAVING COUNT(*) > 3  
