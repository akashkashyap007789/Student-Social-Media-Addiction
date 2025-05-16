CREATE TABLE student_addiction (     Student_ID INT AUTO_INCREMENT PRIMARY KEY,  
   Gender VARCHAR(10),  
   Age INT,  
   Country VARCHAR(50),  
   Academic_Level VARCHAR(50),  
   Sleep_Hours_Per_Night FLOAT,  
   Addicted_Score FLOAT,  
   Most_Used_Platform VARCHAR(50),
   Affects_Academic_Performance VARCHAR(10),
   Conflicts_Over_Social_Media VARCHAR(10)
   );


#1. Gender Distribution

SELECT Gender, COUNT(*) AS Total
FROM student_addiction
GROUP BY Gender;


#2. Average Addiction Score by Academic Level

SELECT Academic_Level, AVG(Addicted_Score) AS Avg_Score
FROM student_addiction
GROUP BY Academic_Level;


#3. Most Used Platforms Count

select Most_Used_Platform, count(*) as users
from student_addiction
group by Most_Used_Platform
order by users desc; 


#4. Sleep vs Addiction

SELECT Sleep_Hours_Per_Night, AVG(Addicted_Score) AS Avg_Score
FROM student_addiction
GROUP BY Sleep_Hours_Per_Night
ORDER BY Sleep_Hours_Per_Night;


#5. Addiction Impact on Academic Performance

SELECT Affects_Academic_Performance, AVG(Addicted_Score) AS Avg_Score
FROM student_addiction
GROUP BY Affects_Academic_Performance;


































