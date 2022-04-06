select s.first||' '||s.last as "STUD_NAMES" , m.majordesc from student s, major m where s.majorid = m.majorid;

select s.first||' '||s.last as "STUD_NAMES" , r.final , t.termdesc from student s, registration r , term t where s.studentid = r.studentid and s.startterm = t.termid and t.termdesc = 'Winter 2003' and r.final = 'F';

select s.first||' '||s.last as "STUDENT_NAMES" , f.name , l.building from student s , faculty f , location l where s.facultyid = f.facultyid and f.roomid = l.roomid;

select crssection.csid , term.termdesc , crssection.courseid , crssection.facultyid , name from crssection left outer join faculty on ( crssection.facultyid = faculty.facultyid ) left outer join term on (crssection.termid = term.termid) where term.termdesc = 'Spring 2003';

select title , nvl(prereq,'NO PREREQ') as prereq from course;

select roomid , building from location where roomtype = 'O';

select f.name as "FACULTY_NAME" , d.deptname , l.building from faculty f, location l , department d where f.deptid = d.deptid and f.roomid = l.roomid and f.deptid='1';

select f.name , d.deptname , l.building from faculty f , department d , location l where f.deptid = d.deptid and f.roomid = l.roomid and d.deptid = 3 and l.building='Gandhi';