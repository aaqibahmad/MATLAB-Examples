clear; clc;
disp('***Welcome to HOTEL STAYWELL PREMIER***');
disp('==========================================');
disp('==========================================');
fprintf ('\n\n'); 
%=================  For Entering Required Details =================
id_no=input('Enter Your Identity Number : ','s');
customer=input('Enter Your Name : ','s');
hometown=input('Enter Your Hometown: ','s');
staying_days=input('Enter the Number of days you want to stay : ');
fprintf('\n\n'); 
%=================  For Entering Food Details =================
food_items=input('Enter The total items ordered: ');
%=================  For Feedback =================
grade = input('Enter the Grade from A to D:','s');
   switch(grade)
   case 'A' 
      fprintf('Excellent!\n' );
   case 'B' 
      fprintf('Well done\n' );
   case 'C' 
      fprintf('Well done\n' );
   case 'D'
      fprintf('You passed\n' );
   case 'F' 
      fprintf('Better try again\n' );
   otherwise
      fprintf('Invalid grade\n' );
   end
%=================  For Totalling the Bill, Tax and Showing =================
e=staying_days;
f=food_items;
bill_calc=e;
result=0;
 if bill_calc>5
 result=bill_calc*10+1600;
 elseif(bill_calc>3)&&(bill_calc<=4)
 result=bill_calc*8+800;
 elseif(bill_calc>2)&&(bill_calc<=3)
 result=bill_calc*6+200;
 elseif(bill_calc>0)&&(bill_calc<=2)
 result=bill_calc*5+40*f;
 end
 %=================  For Electrcity Bill Generation =================
 fprintf ('\n\n'); 
 disp ('*********** Billing Information Id Number. : ************');
 disp ('============================================================');
 disp (id_no);
 disp (' Subscriber Name : ' );
 disp (customer);
 disp ('Customer Hometown : ' );
 disp (hometown);
 disp (' Number of days stayed : ');
 disp (staying_days);
 disp (' Total Bill Generated : ');
 disp (e);
 disp('Total Payment To Be Made Is : ');
 disp(result);
 disp('Your Grade');
 disp(grade);
 disp('***************************************');
 disp('**************THANK YOU****************');