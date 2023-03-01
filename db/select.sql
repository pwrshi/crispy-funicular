SELECT RP.week_is_odd, D.name, DS.name, PR.time, TC.name, AD.name, GP.name
FROM lessonGroups AS LG 
JOIN groups AS GP 
ON GP.id = LG.group
JOIN lesson AS RP
ON RP.id = LG.lesson 
JOIN weekdays AS D 
ON D.id = RP.weekday
JOIN disciplines AS DS
ON DS.id = RP.discipline
JOIN lesson_times as PR
ON PR.id = RP.time
JOIN teachers AS TC
ON TC.id = RP.teacher
JOIN rooms AS AD
ON AD.id = RP.room
WHERE AD.name='ауд.212';

SELECT RP.week_is_odd, D.name, DS.name, PR.time, TC.name, AD.name, GP.name
FROM lessonGroups AS LG 
JOIN groups AS GP 
ON GP.id = LG.group
JOIN lesson AS RP
ON RP.id = LG.lesson 
JOIN weekdays AS D 
ON D.id = RP.weekday
JOIN disciplines AS DS
ON DS.id = RP.discipline
JOIN lesson_times as PR
ON PR.id = RP.time
JOIN teachers AS TC
ON TC.id = RP.teacher
JOIN rooms AS AD
ON AD.id = RP.room
WHERE TC.name='Долженко А.И.';

SELECT RP.week_is_odd, D.name, DS.name, PR.time, TC.name, AD.name, GP.name
FROM lessonGroups AS LG 
JOIN groups AS GP 
ON GP.id = LG.group
JOIN lesson AS RP
ON RP.id = LG.lesson 
JOIN weekdays AS D 
ON D.id = RP.weekday
JOIN disciplines AS DS
ON DS.id = RP.discipline
JOIN lesson_times as PR
ON PR.id = RP.time
JOIN teachers AS TC
ON TC.id = RP.teacher
JOIN rooms AS AD
ON AD.id = RP.room
WHERE GP.name = 'ИСТ-311';
