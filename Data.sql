delete from Finance;

insert into Finance values (180905186,50000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (180905144,45000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (180905116,50000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (190905462,49000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (170905081,50000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (170905182,50000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (180905184,50000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (180905461,44000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (170905422,50000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (170905184,41000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (180903214,50000,NULL,NULL,NULL,NULL,NULL);
insert into Finance values (190902312,47000,NULL,NULL,NULL,NULL,NULL);

insert into Finance values (12455153,400000,NULL,NULL,NULL,NULL,NULL);

insert into Finance values (12345,NULL,25000,NULL,NULL,NULL,NULL);
insert into Finance values (10101,NULL,25000,NULL,NULL,NULL,NULL);
insert into Finance values (15373,NULL,23000,NULL,NULL,NULL,NULL);
insert into Finance values (13542,NULL,28000,NULL,NULL,NULL,NULL);
insert into Finance values (32857,NULL,30000,NULL,NULL,NULL,NULL);
insert into Finance values (19657,NULL,26000,NULL,NULL,NULL,NULL);
insert into Finance values (17247,NULL,25000,NULL,NULL,NULL,NULL);
insert into Finance values (18457,NULL,20000,NULL,NULL,NULL,NULL);
insert into Finance values (14457,NULL,21000,NULL,NULL,NULL,NULL);
insert into Finance values (13223,NULL,28000,NULL,NULL,NULL,NULL);
insert into Finance values (34313,NULL,31000,NULL,NULL,NULL,NULL);
insert into Finance values (17654,NULL,22000,NULL,NULL,NULL,NULL);

insert into Finance values (91028,NULL,NULL,40000,NULL,NULL,NULL);

insert into Finance values (156812,NULL,NULL,NULL,16000,NULL,NULL);
insert into Finance values (187652,NULL,NULL,NULL,42000,NULL,NULL);
insert into Finance values (123544,NULL,NULL,NULL,80000,NULL,NULL);
insert into Finance values (127493,NULL,NULL,NULL,60000,NULL,NULL);
insert into Finance values (431245,NULL,NULL,NULL,75000,NULL,NULL);
insert into Finance values (246124,NULL,NULL,NULL,85000,NULL,NULL);
insert into Finance values (363273,NULL,NULL,NULL,62500,NULL,NULL);
insert into Finance values (314264,NULL,NULL,NULL,73500,NULL,NULL);
insert into Finance values (516351,NULL,NULL,NULL,60000,NULL,NULL);
insert into Finance values (214314,NULL,NULL,NULL,120000,NULL,NULL);
insert into Finance values (125732,NULL,NULL,NULL,200000,NULL,NULL);
insert into Finance values (126353,NULL,NULL,NULL,32000,NULL,NULL);
insert into Finance values (162534,NULL,NULL,NULL,16000,NULL,NULL);
insert into Finance values (152312,NULL,NULL,NULL,12500,NULL,NULL);
insert into Finance values (173353,NULL,NULL,NULL,8000,NULL,NULL);
insert into Finance values (615242,NULL,NULL,NULL,30000,NULL,NULL);
insert into Finance values (126262,NULL,NULL,NULL,40000,NULL,NULL);

insert into Finance values (923552,NULL,NULL,NULL,NULL,25000,NULL);
insert into Finance values (181818,NULL,NULL,NULL,NULL,NULL,3000);

delete from FeedBack;
delete from student;
delete from pays;
delete from Student_Contact_Details;
delete from food_pref;

insert into food_pref values (180905186,'4','Non-Vegetarian',NULL);
insert into food_pref values (180905144,'4','Non-Vegetarian','Dairy Products');
insert into food_pref values (180905116,'4','Non-Vegetarian',NULL);
insert into food_pref values (190905462,'2','Non-Vegetarian','Mushrooms');
insert into food_pref values (170905081,'6','Vegetarian',NULL);
insert into food_pref values (170905182,'6','Vegetarian','Corn');
insert into food_pref values (180905184,'4','Non-Vegetarian',NULL);
insert into food_pref values (180905461,'4','Vegetarian','Milk');
insert into food_pref values (170905422,'6','Vegetarian',NULL);
insert into food_pref values (170905184,'6','Non-Vegetarian','Sea-Food');
insert into food_pref values (180903214,'4','Vegetarian',NULL);
insert into food_pref values (190902312,'2','Vegetarian',NULL);

insert into Student_Contact_Details values (180905186,9702080006,9702070940,'josephmohanty8999@gmail.com');
insert into Student_Contact_Details values (180905144,9154321246,9812368258,'sankalpshekhar14@gmail.com');
insert into Student_Contact_Details values (180905116,9816346123,9291243546,'reva_pandey@gmail.com');
insert into Student_Contact_Details values (190905462,7281845767,9384572347,'dish_arora123@gmail.com');
insert into Student_Contact_Details values (170905081,9129234571,9023858575,'aishwaryadeoraj@gmail.com');
insert into Student_Contact_Details values (170905182,8082623542,9215648694,'mittalruhi@yahoo.com');
insert into Student_Contact_Details values (180905184,9182471274,9012394855,'pratikpatnaik12@gmail.com');
insert into Student_Contact_Details values (180905461,9221238213,9891829182,'le_immortal@gmail.com');
insert into Student_Contact_Details values (170905422,8812948575,9191457214,'taneja_ekesh69@gmail.com');
insert into Student_Contact_Details values (170905184,9412338586,8812345868,'khushiajaygarg@gmail.com');
insert into Student_Contact_Details values (180903214,9982137572,9921045773,
'maheshwarishyam151@gmail.com');
insert into Student_Contact_Details values (190902312,9918273775,9720475714,'khosesahil21@gmail.com');

insert into Pays values (180905186,50000);
insert into Pays values (180905144,45000);
insert into Pays values (180905116,50000);
insert into Pays values (190905462,49000);
insert into Pays values (170905081,50000);
insert into Pays values (170905182,50000);
insert into Pays values (180905184,50000);
insert into Pays values (180905461,44000);
insert into Pays values (170905422,50000);
insert into Pays values (170905184,41000);
insert into Pays values (180903214,50000);
insert into Pays values (190902312,47000);

insert into student values ('Joseph','Anurag','Mohanty',180905186,TO_DATE('08-SEP-1999','DD-MON-YYYY'),'M','4','Block 14','Martin','Mohanty');
insert into student values ('Sankalp',NULL,'Shekhar',180905144,TO_DATE('14-SEP-2000','DD-MON-YYYY'),'M','4','Block 14','Himanshu','Shekhar');
insert into student values ('Reva',NULL,'Pandey',180905116,TO_DATE('09-MAR-1999','DD-MON-YYYY'),'F','4','Block 13','Manish','Pandey');
insert into student values ('Dishant',NULL,'Arora',190905462,TO_DATE('15-MAY-2001','DD-MON-YYYY'),'M','2','Block 17','Deepak','Arora');
insert into student values ('Aishwarya',NULL,'Deoraj',170905081,TO_DATE('05-JUN-2000','DD-MON-YYYY'),'F','6','Block 13','Srivani','Deoraj');
insert into student values ('Ruhi',NULL,'Mittal',170905182,TO_DATE('15-MAY-1999','DD-MON-YYYY'),'F','6','Block 22','Poonam','Mittal');
insert into student values ('Pratik',NULL,'Patnaik',180905184,TO_DATE('19-SEP-2000','DD-MON-YYYY'),'M','4','Block 15','Dilip','Patnaik');
insert into student values ('Abhinav',NULL,'Sharma',180905461,TO_DATE('15-OCT-2000','DD-MON-YYYY'),'M','4','Block 14','Rahul','Sharma');
insert into student values ('Ekesh',NULL,'Taneja',170905422,TO_DATE('13-MAR-1999','DD-MON-YYYY'),'M','6','Block 9','Mukesh','Taneja');
insert into student values ('Khushi','Ajay','Garg',170905184,TO_DATE('16-JUL-2000','DD-MON-YYYY'),'F','6','Block 22','Ajay','Garg');
insert into student values ('Shyam',NULL,'Maheshwari',180903214,TO_DATE('20-JUN-2000','DD-MON-YYYY'),'M','4','Block 10','Rohan','Maheshwari');
insert into student values('Sahil','Pradip','Khose',190902312,TO_DATE('21-APR-2001','DD-MON-YYYY'),'M','2','Block 16','Pradip','Khose');

insert into FeedBack values (180905186,'The food is good and hygienic, and the staff is really cooperative.');
insert into FeedBack values (180905144,'All in all the it is good, but the food cooked is bland and sometimes it is soggy');
insert into FeedBack values (190905462,'I dislike the environment of this place, it is really crowded and the management is not that good');
insert into FeedBack values (170905184,'The food is okayish, but the cleanliness should be taken care of');
insert into FeedBack values (180905461,'The ambience is fine, food is just right but the ventilation should be taken care due to huge crowd');
insert into FeedBack values (170905081,'The food court is really awesome and the food is above par');
insert into FeedBack values (190902312,'The services are okay, could need some working up');

delete from Works_For;
delete from Employee;
delete from Gives_Salary;
delete from Employee_Contact_Details;

insert into Employee_Contact_Details values (12345,8184853236);
insert into Employee_Contact_Details values (10101,9722245136);
insert into Employee_Contact_Details values (15373,9514321234);
insert into Employee_Contact_Details values (13542,9702304571);
insert into Employee_Contact_Details values (17654,9732054124);
insert into Employee_Contact_Details values (19657,9054632455);
insert into Employee_Contact_Details values (32857,9016323485);
insert into Employee_Contact_Details values (34313,9254031412);
insert into Employee_Contact_Details values (17247,9054623455);
insert into Employee_Contact_Details values (18457,9754632125);
insert into Employee_Contact_Details values (14457,9054632111);
insert into Employee_Contact_Details values (13223,9192564123);

insert into Gives_Salary values (12345,25000);
insert into Gives_Salary values (10101,25000);
insert into Gives_Salary values (15373,23000);
insert into Gives_Salary values (13542,28000);
insert into Gives_Salary values (32857,30000);
insert into Gives_Salary values (19657,26000);
insert into Gives_Salary values (17247,25000);
insert into Gives_Salary values (18457,20000);
insert into Gives_Salary values (14457,21000);
insert into Gives_Salary values (13223,28000);
insert into Gives_Salary values (34313,31000);
insert into Gives_Salary values (17654,22000); 

insert into Employee values (12345,'Ankit','Ram','Dutta','M',TO_DATE('05-AUG-1989','DD-MON-YYYY'),TO_DATE('10-JUL-2010','DD-MON-YYYY'),'Cook');
insert into Employee values (10101,'Astha','Ravi','Shankar','F',TO_DATE('07-JUL-1986','DD-MON-YYYY'),TO_DATE('08-JAN-2011','DD-MON-YYYY'),'Cook');
insert into Employee values (15373,'Shyam','Venugopal','Iyer','M',TO_DATE('18-FEB-1977','DD-MON-YYYY'),TO_DATE('23-MAR-2007','DD-MON-YYYY'),'Cleaner');
insert into Employee values(17654,'Sarthak','Vinayak','Panda','M',TO_DATE('18-FEB-1988','DD-MON-YYYY'),TO_DATE('30-OCT-2015','DD-MON-YYYY'),'Cleaner');
insert into Employee values (13542,'Aradhya',NULL,'Singh','F',TO_DATE('17-JAN-1980','DD-MON-YYYY'),TO_DATE('11-AUG-2007','DD-MON-YYYY'),'Receptionist');
insert into Employee values(32857,'Akshat','Atul','Srivastav','M',TO_DATE('19-SEP-1975','DD-MON-YYYY'),TO_DATE('21-SEP-2006','DD-MON-YYYY'),'Manager');
insert into Employee values(19657,'Ayush',NULL,'Vatsa','M',TO_DATE('22-DEC-1980','DD-MON-YYYY'),TO_DATE('01-JAN-2002','DD-MON-YYYY'),'Cook');
insert into Employee values (17247,'Sneha',NULL,'Sarkar','F',TO_DATE('09-NOV-1979','DD-MON-YYYY'),TO_DATE('08-MAR-2020','DD-MON-YYYY'),'Cook');
insert into Employee values (18457,'Harsh','Dev','Varma','M',TO_DATE('18-FEB-1987','DD-MON-YYYY'),TO_DATE('14-DEC-2017','DD-MON-YYYY'),'Cleaner');
insert into Employee values(14457,'Ahmed','Rafiq','Mansur','M',TO_DATE('30-NOV-1988','DD-MON-YYYY'),TO_DATE('30-OCT-2015','DD-MON-YYYY'),'Cleaner');
insert into Employee values (13223,'Ankita','Ramesh','Ponappa','F',TO_DATE('19-SEP-1980','DD-MON-YYYY'),TO_DATE('14-AUG-2008','DD-MON-YYYY'),'Receptionist');
insert into Employee values(34313,'Shravani','Venkatesh','Iyer','M',TO_DATE('19-SEP-1975','DD-MON-YYYY'),TO_DATE('21-SEP-2006','DD-MON-YYYY'),'Manager');

insert into Works_For values (12345,32857);
insert into Works_For values (15373,32857);
insert into Works_For values (10101,32857);
insert into Works_For values (17654,32857);
insert into Works_For values (13542,32857);
insert into Works_For values (19657,34313);
insert into Works_For values (17247,34313);
insert into Works_For values (18457,34313);
insert into Works_For values (14457,34313);
insert into Works_For values (13223,34313);

delete from Wastage;
delete from Food_Ration;

insert into Food_Ration values (156812,'Oranges',500,16000);
insert into Food_Ration values (187652,'Bananas',550,42000);
insert into Food_Ration values (123544,'Milk',1000,80000);
insert into Food_Ration values (127493,'Tea',250,60000);
insert into Food_Ration values (431245,'Coffee',250,75000);
insert into Food_Ration values (246124,'Wheat',1500,85000);
insert into Food_Ration values (363273,'Curd',1200,62500);
insert into Food_Ration values (314264,'Rice',2000,73500);
insert into Food_Ration values (516351,'Corn',150,60000);
insert into Food_Ration values (214314,'Chicken',1000,120000);
insert into Food_Ration values (125732,'Fish',100,200000);
insert into Food_Ration values (126353,'Potato',800,32000);
insert into Food_Ration values (162534,'Lady Finger',400,16000);
insert into Food_Ration values (152312,'Cabbage',250,12500);
insert into Food_Ration values (173353,'Cauliflower',200,8000);
insert into Food_Ration values (615242,'Mushroom',100,30000);
insert into Food_Ration values (126262,'Cottage Cheese',1000,40000);


insert into Wastage values (156812,12);
insert into Wastage values (187652,31);
insert into Wastage values (123544,50);
insert into Wastage values (127493,41);
insert into Wastage values (431245,10);
insert into Wastage values (246124,55);
insert into Wastage values (363273,46);
insert into Wastage values (516351,29);
insert into Wastage values (214314,51);
insert into Wastage values (125732,11);
insert into Wastage values (126353,55);
insert into Wastage values (162534,39);
insert into Wastage values (152312,70);
insert into Wastage values (173353,23);
insert into Wastage values (615242,63);
insert into Wastage values (126262,19);

delete from Menu;

insert into Menu values ('Monday','Aloo Paratha,Raw Mango Semiya, Cornflakes with Hot/Cold Milk, Boiled Eggs or Fresh Fruit, Bread /Butter and Jam, Tea /Coffee','Phulka, Veg Handi, Rajasthani Kadi Pakoda, Dal Fry, Jhatphat Baingan Subji, Rice/sambar, Curd/Pickle/Papad, Tang Juice','Biscuit Rotti, Banana Cake, Tea/ Coffee/ Milk','Roti, Chicken Kolapuri, Paneer Lababdhar, Aloo Methi, Ghee Rice, Dal  with jeera Tadka, Rice/sambar, Balushai');
insert into Menu values ('Tuesday','Idli / Tove and Sambar, Bread Pakoda, Sprouted Moong, Egg omlette or Fresh Fruit, Bread /Butter and Jam, Tea/Coffee/Bournvita','Pudina Roti, Raw Banana Subzi, Rajma Masala,Coriander Dal, Rice, Sambar, Curd/Pickle/Capsicum Pakoda, Mango Lassi','Goli Baje, Spicy Cookies, Tea,Coffee/Boost,','Phulka, South Indian style Egg Curry, Mushroom Kadai, Aloo Mutter, Boondi Raitha, Tomato Rice, Dal Fry,Rice/sambar, Badam Poori');
insert into Menu values ('Wednesday','Poori and Aloo Saag, Banana Pudding, Cornflakes with Cold Milk, Boiled Egg or Fresh Fruit, Bread /Butter and Jam, Tea,Coffee','Roti, Bendi Tamatar, Corn Khorma, Channa and Toor dal, Rice/ Sambar, Dal Kichidi, Curd/Pickle/Sandige, Semiya Kheer','Mangalore Buns, Atte ka Halwa, Tea/ Coffee/ Milk','Chapati, Murgh Karachiwala, Paneer Butter Masala, Channa Cabbage Sabzi, Gujrati Dal, Rice/sambar, Spring Onion Rice, Mix Veg Salad, Malpuva');
insert into Menu values ('Thrusday','Set Dosa, Tomato Poha, Boiled Egg or Fruit, Bread /Butter and Jam, Tea/Coffee/Boost','Poori, Aloo Baingan,  Peshwari Chole, Dal Fry, Rice, Sambar, Curd/Pickle, Moong dal Halwa','Pav Bhaji, Cookies, Tea/ Coffee/ Milk','Paratha, Egg Maharaja,   Veg Cafreal, Chatpata Aloo, Dal Fry, Rice/sambar, Mint Peas Pulao, Raitha, Hot badam');
insert into Menu values ('Friday','Mutter Paratha, Mix Veg Upma With Sev,Cornflakes with Hot/Cold Milk, Boiled Eggs or Fresh Fruit, Bread /Butter and Jam, Tea, Coffee','Phulka, Makai wala bendi, Kashmiri Dum Aloo, Dal Tadka, Rice/Sambar, South Subzi, Curd/Pickle, Buttermilk','Samosa,Salted ,Cookies, Tea/ Coffee/ Bournvita','Chapathi, Lemon Coriander Chicken,  Paneer Tikka Masala, Carrot Cabbage Sabzi, Pancharatna Dal, Rice, Lemon Rice, Sambar, Coconut choco burfi');
insert into Menu values ('Saturday','Idli and Chutney, Medu vada with Sambar, Bulls Eye or Fresh Fruit, Bread /Butter and Jam, Tea/Coffee/Horlicks','Paratha, Punjabi Gobi Subzi, Paneer Kadai, Tomato Dal, Tawa Pulav, Sambar, Curd/Pickle/Papad, Mathura Peda','Channa chat and Upma,Dryfruit Muffins, Tea/ Coffee/ Milk','Plain Paratha, Sprout Beans With Vegtable curry, Aloo Tadka, Dal Fry, Sambhar, Rice/sambar, Mix Mayo salad, Hot Chocolate');
insert into Menu values ('Sunday','Masala Dosa /Sambar /chutney,Chocoflakes with Hot/Cold Milk, Boiled Eggs or Fresh Fruit, Bread /Butter and Jam,  Tea/Coffee','Pulka, Chicken Masaledar, Chatpata Paneer Curry, Aloo gobi, Dal with garlic thadka, Rice, Curd and Pickle, Peas pulav, Kala Jamoon','Bombay tawa Sandwich, Onion Pakoda, Tea/ Coffee/ Milk','Roti, Daba Style Egg Curry, Babycorn and Mushroom Masala,
North Mix Veg Sabzi, Spicy Potato Wedges, Spinach Dal, Sambhar/ Rasam,
Jeera Rice, Tang Juice');



