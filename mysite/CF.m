%传统的CF方法推荐的准确率
conn =database('test','root','wangyuqin','com.mysql.jdbc.Driver','jdbc:mysql://localhost/test');
ping(conn);

cursor = exec(conn,'select * from cmt_score');
cursor = fetch(cursor);
%cursor.data返回一个cell结构，可将cell结构转换成matrix结构再取值
cur = cursor.data;
rowcmt = rows(cursor);
colcmt = cols(cursor);
cmt = sym(cur);

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

[cmtsim,nebcmt] = simcmt(cmt_prac,31,6);
%为每个用户寻找6个邻居,为每个用户推荐 ceil(100*(1-pracrate))个课程
recnum = 100;
nebnum = 100;
[top] = cmtdeal (cmt_prac,cmtsim,nebcmt,colcmt,rowcmt,recnum,nebnum);
correctcmt = 0;
for i = 1:30
    for j = 1:recnum
        if cmt(top(i,j),i+1)~=0
            correctcmt = correctcmt +1;
        end
    end
end

disp('cmtcorrect');
disp(correctcmt);
disp(2026 - ceil(2026*pracrate));
cmtrate = roundn(double(correctcmt/(2026 - ceil(2026*pracrate))),-4);