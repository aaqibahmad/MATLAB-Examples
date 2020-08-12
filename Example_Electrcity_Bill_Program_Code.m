disp('***WELCOME TO THE ELECTRICITY BILL GENERATOR APPLICATION***');
disp('===========================================================');
disp('***BANGALORE STATE ELECTRCITY CORPORATION***');
disp('*** By: AAQIB AHMAD - 1947101 - 2MCS ***');
disp('===========================================================');

fprintf ('\n\n'); 

%=================  For Entering Required Details =================
meter=input('Enter Meter Number : ','s');
customer=input('Enter Subscriber Name : ','s');
old_reading=input('Enter Previous Reading : ');
new_reading=input('Enter Month End Reading : ');
fprintf('\n\n'); 
disp('==== Total Units Consumed are : ========');
e=new_reading-old_reading;
disp(e);
%=================  For Totalling the Bill and Showing =================
e=input('Enter Total Units Consumed : ');
units=e;
result=0;
 if units>400
 result=units*10-1600;
 elseif(units>300)&&(units<=400)
 result=units*8-800;
 elseif(units>200)&&(units<=300)
 result=units*6-200;
 elseif(units>0)&&(units<=200)
 result=units*5;
 end
 %=================  For Electrcity Bill Generation =================
 fprintf ('\n\n'); 
 disp ('*********** Billing Information For Meter No. : ************');
 disp ('============================================================');
 disp (meter);
 disp (' Subscriber Name : ');
 disp (customer);
 disp (' Previous Reading : ');
 disp (old_reading);
 disp (' Month End Reading : ');
 disp (new_reading);
 disp (' Total Units Consumed : ');disp (e);
 disp('Total Payment To Be Made Is : ');
 disp(result); 
 disp('***************************************');
 disp('**************THANK YOU****************');
 