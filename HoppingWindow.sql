SELECT System.TimeStamp AS WindowEnd, TollId, COUNT(*)  
FROM Input TIMESTAMP BY EntryTime  
GROUP BY TollId, HoppingWindow(Duration(hour, 1), Hop(minute, 5), Offset(millisecond, -1))  
