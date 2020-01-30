#1. 
select COUNT(*), MAX(speed), MIN(speed) from planes where speed is not null;

#2a.
select SUM(distance) from flights where year = 2013 and month = 1;

#2b.
select SUM(distance) from flights where year = 2013 and month = 1 and tailnum is null;

#3a. 
SELECT p.manufacturer, SUM(distance)
FROM flights f
inner join planes p on f.tailnum = p.tailnum
group by p.manufacturer;

#3b. 
SELECT p.manufacturer, SUM(distance)
FROM flights f
LEFT OUTER join planes p on f.tailnum = p.tailnum
group by p.manufacturer;

#4.
select a.name, COUNT(*)
from flights f
INNER JOIN planes p on f.tailnum = p.tailnum
INNER JOIN airlines a on a.carrier = f.carrier
GROUP BY a.name