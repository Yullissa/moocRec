function [sd] = addsd(matin,col,row)
%1�У�row�еľ��󣬱�ʾÿһ���û���һ������ά���µı�׼��,xiugaiguo
for u =1:row
%     maxu = max(matin(u,3:col-2),[],2);
%     minu = min(matin(u,3:col-2),[],2);
    disp('col=');
    disp(col);
    aver(u,1) = roundn(double(sum(matin(u,2:col-2)/(col-3))),-4);
    disp('aver = ');
    disp(aver(u,1));
    sum1 = 0;
    for j = 2:col-2
        sum1 = sum1 + roundn(double(dot(matin(u,j) - aver(u,1),matin(u,j) - aver(u,1))),-4);
    end
    disp('sum');
    disp(sum1);
    %������׼��
    sd(u,1) = sqrt(roundn(double(sum1/(col-4)),-4));
end



