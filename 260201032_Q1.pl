%faculty member contains profs, assistants and staff
is_faculty_member(X) :-
assistant_prof(X);
res_assistant(X);
staff(X).

is_iyte_member(X) :-
is_faculty_member(X);
student(X).

%only profs and assistants can teach
can_teach(X) :-
assistant_prof(X);
res_assistant(X).

%only student and assistants can take course
can_take_course(X) :-
student(X);
res_assistant(X).

%check if student and course is valid
can_student_take_course(Student, Course) :-
student(Student),
course(Course).

%check if student takes the course that prof teaches
does_student_know_prof(Student, Prof) :-
takes(Student, A),
teaches(Prof, A).

course('CENG212').
course('CENG322').
course('CENG316').
course('CENG318').
course('CENG312').

assistant_prof('Damla Oguz').
assistant_prof('Onur Demirors').
assistant_prof('Mustafa Ozuysal').
assistant_prof('Tolga Ayav').
assistant_prof('Tugkan Tuglular').

res_assistant('Huseyin Unlu').
res_assistant('Altug Yigit').
res_assistant('Burak Topcu').
res_assistant('Adil Coban').
res_assistant('Dilek Ozturk').

staff('Canan Ozturk').
staff('Zafer Ates').
staff('Staff 3').
staff('Staff 4').
staff('Staff 5').

teaches('Damla Oguz', 'CENG212').
teaches('Onur Demirors', 'CENG312').
teaches('Mustafa Ozuysal', 'CENG318').
teaches('Tolga Ayav', 'CENG322').
teaches('Tugkan Tuglular', 'CENG316').

student('Burak Saler').
student('Gulce Sarac').
student('Derya Karakaya').
student('Kutay Ozbay').
student('Mehmet Ali Okay').

takes('Burak Saler', 'CENG212').
takes('Burak Saler', 'CENG312').
takes('Burak Saler', 'CENG318').
takes('Student 2', 'CENG312').
takes('Student 3', 'CENG318').
takes('Student 4', 'CENG322').
takes('Student 5', 'CENG316').
