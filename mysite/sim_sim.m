function [sim,top] = sim_sim (matin,col,topnum) 
%row行，5列的矩阵，表示每个用户在一个属性维度下的top-5的偏好的序号,chuliguo
format short;
sim = [];

for i=2:col-2
    for j=i:col-2
        if i==j
            sim(i-1,j-1)=1;
        else
            a = matin(:,i);
            b = matin(:,j);
            simup = dot(a,b);
            simdown = roundn(double(sqrt(dot(a,a))*sqrt(dot(b,b))),-4);
            if(simdown == 0)
                sim(j-1,i-1) = 0;
                sim(i-1,j-1) =0;
            else
                sim(i-1,j-1) = roundn(double(simup/simdown),-4);
                sim(j-1,i-1) = sim(i-1,j-1);
            end
        end
    end
end
disp('##############');
disp('sim=');
disp(sim);
p = sim;

for u = 1:col-3
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
    for i = topnum + 1:col-3
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
disp('end sim_sim')