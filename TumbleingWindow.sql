SELECT System.TimeStamp AS WindowEnd, TollId, COUNT(*)  
FROM Input TIMESTAMP BY EntryTime  
GROUP BY TollId, TumblingWindow(Duration(hour, 1), Offset(millisecond, -1))  
