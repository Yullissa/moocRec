function [pracrec,cmt,cmt_prac,course_score,course_lang,course_school,course_plat] = caldata(rowcmt,colcmt,cmt,info,pracrate)

%pracnum = ceil(2026*x);
pracnum = ceil(1000*pracrate);

course_school = zeros(30,76);
course_plat = zeros(30,21);
course_lang = zeros(30,5);
course_score = zeros(30,8);
cmt_prac = zeros(978,31);
i=0;
pracrec = zeros(1,pracnum);
while i < pracnum
    colnum = round(rand(1,1)*(colcmt-2))+1;
    rownum = round(rand(1,1)*(rowcmt-1))+1;
    ui = colnum(1,1)+1;
    ci = rownum(1,1);
    disp(double(cmt(ci,ui)));
    if round(double(cmt(ci,ui)))~= 0
        i = i + 1;
        %记录所有测试的课程号
        pracrec(1,i) = cmt(ci,1);
        cmt_prac(ci,ui) = cmt(ci,ui);
        cmt(ci,ui) = 0;
        uindex = ui - 1;
        if info(ci,2)~=0
            course_school(uindex,info(ci,2)+1) = course_school(uindex,info(ci,2)+1) + 1;
        elseif info(ci,2) == 0
            course_school(uindex,75) = course_school(uindex,75) + 1;
        end
        if info(ci,3)~=0
            course_plat(uindex,info(ci,3)+1) = course_plat(uindex,info(ci,3)+1)+1;
        elseif info(ci,3) == 0
            course_plat(uindex,20) = course_plat(uindex,20)+1;
        end 
        if info(ci,4)~=0
            course_lang(uindex,info(ci,4)+1) = course_lang(uindex,info(ci,4)+1)+1;
        elseif info(ci,4) == 0
            course_lang(uindex,4) = course_lang(uindex,4)+1;
        end 
        if info(ci,5)~=0
            course_score(uindex,10-info(ci,5)+1) = course_score(uindex,10-info(ci,5)+1)+1;
        elseif info(ci,5) == 0
            course_score(uindex,7) = course_score(uindex,7)+1;
        end         
        course_score(uindex,8) = course_score(uindex,8) + 1;
        course_lang(uindex,5) = course_lang(uindex,5) + 1;
        course_school(uindex,76) = course_school(uindex,76) + 1;
        course_plat(uindex,21) = course_plat(uindex,21) + 1;
    end
end










        
        
    
