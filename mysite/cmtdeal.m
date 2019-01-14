function [top] = cmtdeal (matin,sim,neb,col,row,topnum,nebnum) 
%row行，5列的矩阵，表示每个用户在一个属性维度下的top-5的偏好的序号
format short;
disp('##############');

for i = 2:col
    r(1,i-1) = roundn(double(sum(matin(:,i))/row),-4);
end
%p为预测打分值
disp('##############');
for u = 1:col-1
    disp('cal p');
    for i = 1:row
        preup = 0;
        predown = 0; 
        %只计算最近邻居
        for n = 1:nebnum 
            nebi = neb(u,n);
            preup = preup + sim(u,nebi)*(matin(i,nebi+1)-r(1,nebi));
            predown = predown + sim(u,nebi);           
        end
        div = roundn(double(preup/predown),-4);
        p(i,u) = roundn(double(r(1,u)+div),-4);
    end
end

disp('##############');
top = zeros(row,topnum);
disp('p=');
disp(p);

for u = 1:col-1
    for k = 1:topnum
        top(u,k) = k;
    end
    for i = 1:topnum
        for j = i:topnum
            if p(i,u) < p(j,u)          
                temp = p(i,u);
                p(i,u) = p(j,u);
                p(j,u) = temp;
                tempindex = top(u,i);
                top(u,i) = top(u,j);
                top(u,j) = tempindex;
            end
        end
    end
    for i = topnum + 1:col-1
        j = topnum;
        flag = 0;
        while j>0  && p(i,u) > p(j,u)
            j = j-1;
            flag = 1;
        end
        if flag == 1       
            if j<= topnum -2
                for k = topnum:-1:j+2
                    p(k,u) = p(k-1,u);
                    top(u,k) = top(u,k-1);
                end
            end
            p(j+1,u) = p(i,u);
            top(u,j+1) = i;
        end
    end
end

disp('top = ' );
disp(top);
disp('end cmtdeal');
