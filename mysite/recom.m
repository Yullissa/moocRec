function [rec_course] = recom(sdwei,mattopschool,mattopplat,mattoplang,mattopscore,matweischool,matweiplat,matweilang,matweiscore,matcourse,pracrec,recnum)

rec_course = zeros(30,recnum);
%for i = 1:rowweiplat
for i = 1:30
    %rec_courseid(1,1:100) = 0;
    sdweiplat = sdwei(i,3);
    sdweiscore = sdwei(i,4);
    sdweilang = sdwei(i,5);
    sdweischool = sdwei(i,6);
    total_score = 0;
    m = 0;
    %while j<=rowcourse
    j = 1;
    k = 1;
    disp('course show');
    while k <= 978
        isprac = find(pracrec == matcourse(k,1));
        disp(k);
        if isprac ~= 0
            k = k+1;
            continue;
        end;
%         disp(matcourse(k,:));
%         %求schoolwei的值
%         disp('mattopschool');
%         disp(mattopschool);
%         disp('matweischool');
%         disp(matweischool);
        [xschool,yschool] =  find(mattopschool(i,1:10) == matcourse(k,2));        
        if yschool>0
            weischool = matweischool(i,yschool);
        else
            weischool = 0;
        end
        %求platwei的值
        [xplat,yplat] =  find(mattopplat(i,1:5) == matcourse(k,3));  
        if yplat>0
            weiplat = matweiplat(i,yplat);
        else
            weiplat = 0;
        end
        %求langwei的值
        [xlang,ylang] =  find(mattoplang(i,1:2) == matcourse(k,4));  
        if ylang>0
            weilang = matweilang(i,ylang);
        else
            weilang = 0;
        end
        %求scorewei的值
        [xscore,yscore] =  find(mattopscore(i,1:3) == matcourse(k,5));  
        if yscore>0
            weiscore = matweiscore(i,yscore);
        else
            weiscore = 0;
        end
        
        %disp(sdweiplat*weiplat + sdweiscore*weiscore + sdweilang*weilang + sdweischool*weischool);
        total_score(1,k) = sdweiplat*weiplat + sdweiscore*weiscore + sdweilang*weilang + sdweischool*weischool;
        k = k + 1;
    end
%     disp('totalsocre');
%     disp(total_score);
    k = 1;
    while k<=recnum
%         disp('k=');
%         disp(k);
        [xmax,ymax] = find(total_score == max(total_score(1,:)));
        [x,y] = size(ymax)
%         disp('yamx(1,1)');
%         disp(ymax(1,1));
%         disp('x=');
%         disp(x);
        while x>1 && k<=recnum
            rec_score1(1,k) = max(total_score(1,:));
            recom(1,k) = ymax(x,1);
            total_score(1,ymax(x,1)) = 0;
            x = x - 1;
            k = k + 1;
        end
        if k > recnum
            break;
        end
        rec_score1(1,k) = max(total_score(1,:));
        [xmax,ymax] = find(total_score == max(total_score(1,:)));
        recom(1,k) = ymax(1,1);
        total_score(1,ymax(1,1)) = 0;
        k = k+1;
    end
    disp(recom(1,:));
    for k = 1:recnum
        rec_course(i,k) = recom(1,k);
    end
end