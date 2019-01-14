function [top,wei] = datadeal (matin,sim,neb,col,row,topnum,nebnum) 
%row行，5列的矩阵，表示每个用户在一个属性维度下的top-5的偏好的序号
format short;
disp('##############');

for i = 2:col-2
    r(1,i-1) = roundn(double(sum(matin(:,i))/row),-4);
end

disp('##############');
for u = 1:row
    disp('cal p');
    for i = 1:col-3
        preup = 0;
        predown = 0; 
        %只计算最近邻居
        for n = 1:nebnum 
            nebi = neb(i,n);
            preup = preup + sim(i,nebi)*(matin(u,nebi+1)-r(1,nebi));
            predown = predown + sim(i,nebi);           
        end
        if predown == 0
             p(u,i) = 0;
             continue;
        end
        div = roundn(double(preup/predown),-4);
        p(u,i) = roundn(double(r(1,i)+div),-4);
    end
end

disp('##############');
top = zeros(row,topnum);
disp('p=');
disp(p);

for u = 1:row
    for k = 1:topnum
        top(u,k) = k;
    end
    for i = 1:topnum
        for j = i:topnum
            if p(u,i) < p(u,j)          
                temp = p(u,i);
                p(u,i) = p(u,j);
                p(u,j) = temp;
                tempindex = top(u,i);
                top(u,i) = top(u,j);
                top(u,j) = tempindex;
            end
        end
    end
    for i = topnum + 1:col-4
        j = topnum;
        flag = 0;
        while j>0  && p(u,i) > p(u,j)
            j = j-1;
            flag = 1;
        end
        if flag == 1       
            if j<= topnum -2
                for k = topnum:-1:j+2
                    p(u,k) = p(u,k-1);
                    top(u,k) = top(u,k-1);
                end
            end
            p(u,j+1) = p(u,i);
            top(u,j+1) = i;
        end
    end
end
% 
% disp('top = ' );
% disp(top);
% disp('matin = ');
% disp(matin);
for i = 1:row
    sum_wei = 0;
    for j = 1:topnum
        sum_wei = sum_wei + matin(i,top(i,j)+1); 
    end
    disp('sum_wei = ');
    disp(sum_wei);
    if sum_wei == 0
        for j = 1:topnum
            wei(i,j) = roundn(double(1/topnum),-4);
        end
        continue;
    end
    for j = 1:topnum
        wei(i,j) = roundn(double(matin(i,top(i,j)+1)/sum_wei),-4);
        if wei(i,j)==0
            wei(i,j) = roundn(double(1/topnum),-4);
        end
    end
    
end
disp('wei = ');
disp(wei);
disp('top=');
disp(top);
disp('enddatadeal');
