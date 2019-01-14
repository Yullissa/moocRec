%自己提出的MAWA方法
conn =database('test','root','wangyuqin','com.mysql.jdbc.Driver','jdbc:mysql://localhost/test');
ping(conn);

cursor = exec(conn,'select * from course_info1');
cursor = fetch(cursor);
%cursor.data返回一个cell结构，可将cell结构转换成matrix结构再取值
cur = cursor.data;
rowinfo = rows(cursor);
colinfo = cols(cursor);
info = sym(cur);

%划分系数pracrate
pracrate = 0.1;
[pracrec,cmt,cmt_prac,course_score,course_lang,course_school,course_plat]  = caldata(rowcmt,colcmt,cmt,info,pracrate);
recnum = 100;
       
nebnumscore = 3;
nebnumlang = 2;
nebnumschool = 10;
nebnumplat = 5;
topnumscore = 3;
topnumlang = 2;
topnumschool = 10;
topnumplat = 5;
[simscore,nebscore] = sim_sim(course_score,8,nebnumscore);
[simlang,neblang] = sim_sim(course_lang,5,nebnumlang);
[simschool,nebschool] = sim_sim(course_school,76,nebnumschool);
[simplat,nebplat] = sim_sim(course_plat,21,nebnumplat);

[topplat,weiplat] = datadeal (course_plat,simplat,nebplat,21,30,topnumplat,nebnumplat);
[topscore,weiscore] = datadeal (course_score,simscore,nebscore,8,30,topnumscore,nebnumscore);
[topschool,weischool] = datadeal (course_school,simschool,nebschool,76,30,topnumschool,nebnumschool);
[toplang,weilang] = datadeal (course_lang,simlang,neblang,5,30,topnumlang,nebnumlang);

[sdwei] = addsdwei(course_plat,course_score,course_lang,course_school);
[rec_c] = recom(sdwei,topschool,topplat,toplang,topscore,weischool,weiplat,weilang,weiscore,info,pracrec,recnum);
correctmwra = 0;
for i = 1:30
    disp('i=');
    disp(i);    
    insert(conn,'rec_course1',{'rank','rec1','rec2','rec3','rec4','rec5','rec6','rec7','rec8','rec9','rec10','rec11','rec12','rec13','rec14','rec15','rec16','rec17','rec18','rec19','rec20','rec21','rec22','rec23','rec24','rec25','rec26','rec27','rec28','rec29','rec30','rec31','rec32','rec33','rec34','rec35','rec36','rec37','rec38','rec39','rec40','rec41','rec42','rec43','rec44','rec45','rec46','rec47','rec48','rec49','rec50','rec51','rec52','rec53','rec54','rec55','rec56','rec57','rec58','rec59','rec60','rec61','rec62','rec63','rec64','rec65','rec66','rec67','rec68','rec69','rec70','rec71','rec72','rec73','rec74','rec75','rec76','rec77','rec78','rec79','rec80','rec81','rec82','rec83','rec84','rec85','rec86','rec87','rec88','rec89','rec90','rec91','rec92','rec93','rec94','rec95','rec96','rec97','rec98','rec99','rec100'},{i,rec_c(i,1),rec_c(i,2),rec_c(i,3),rec_c(i,4),rec_c(i,5),rec_c(i,6),rec_c(i,7),rec_c(i,8),rec_c(i,9),rec_c(i,10),rec_c(i,11),rec_c(i,12),rec_c(i,13),rec_c(i,14),rec_c(i,15),rec_c(i,16),rec_c(i,17),rec_c(i,18),rec_c(i,19),rec_c(i,20),rec_c(i,21),rec_c(i,22),rec_c(i,23),rec_c(i,24),rec_c(i,25),rec_c(i,26),rec_c(i,27),rec_c(i,28),rec_c(i,29),rec_c(i,30),rec_c(i,31),rec_c(i,32),rec_c(i,33),rec_c(i,34),rec_c(i,35),rec_c(i,36),rec_c(i,37),rec_c(i,38),rec_c(i,39),rec_c(i,40),rec_c(i,41),rec_c(i,42),rec_c(i,43),rec_c(i,44),rec_c(i,45),rec_c(i,46),rec_c(i,47),rec_c(i,48),rec_c(i,49),rec_c(i,50),rec_c(i,51),rec_c(i,52),rec_c(i,53),rec_c(i,54),rec_c(i,55),rec_c(i,56),rec_c(i,57),rec_c(i,58),rec_c(i,59),rec_c(i,60),rec_c(i,61),rec_c(i,62),rec_c(i,63),rec_c(i,64),rec_c(i,65),rec_c(i,66),rec_c(i,67),rec_c(i,68),rec_c(i,69),rec_c(i,70),rec_c(i,71),rec_c(i,72),rec_c(i,73),rec_c(i,74),rec_c(i,75),rec_c(i,76),rec_c(i,77),rec_c(i,78),rec_c(i,79),rec_c(i,80),rec_c(i,81),rec_c(i,82),rec_c(i,83),rec_c(i,84),rec_c(i,85),rec_c(i,86),rec_c(i,87),rec_c(i,88),rec_c(i,89),rec_c(i,90),rec_c(i,91),rec_c(i,92),rec_c(i,93),rec_c(i,94),rec_c(i,95),rec_c(i,96),rec_c(i,97),rec_c(i,98),rec_c(i,99),rec_c(i,100)});
end

for i = 1:30
    for j = 1:100
        if rec_course(i,j)~=0
            if cmt(rec_course(i,j),i+1)~=0;
                correctmwra = correctmwra + 1;
            end
        end
    end
end

disp('correctmwra');
disp(correctmwra);
mwrarate = roundn(double(correctmwra/(2026 - ceil(2026*pracrate))),-4)



