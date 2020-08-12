Exam1 = input('What is the grade for Exam1? '); 
Exam2 = input('What is the grade for Exam2? '); 
Exam3 = input('What is the grade for Exam3? ');
fprintf('The grades for three exams are %3.1f , %3.1f , and %3.1f.\n',Exam1,Exam2,Exam3)
E = [Exam1; Exam2; Exam3];
Avg = mean(E);
if (Avg >= 90) 
    fprintf('Your overall grade is A'); 
elseif (Avg >= 80 && Avg < 90) 
    fprintf('Your overall grade is B'); 
elseif (Avg >= 70 && Avg < 80) 
    fprintf('Your overall grade is C'); 
elseif (Avg >= 60 && Avg < 70) 
    fprintf('Your overall grade is D'); 
else 
    fprintf('Fail'); 
end