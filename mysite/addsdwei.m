function [sdwei] = addsdwei(plat,score,lang,school)

matsd = zeros(30,6);
matsd(:,3) = addsd(plat,21,30);
matsd(:,4) = addsd(score,8,30);
matsd(:,5) = addsd(lang,5,30);
matsd(:,6) = addsd(school,76,30);

for i = 1:30
    %5 5 2 10为校准系数，3列是Plat,4->score,5->lang,6->school
    matsd(i,3) = roundn(double(matsd(i,3)/5),-4);
    matsd(i,4) = roundn(double(matsd(i,4)/5),-4);
    matsd(i,5) = roundn(double(matsd(i,5)/2),-4);
    matsd(i,6) = roundn(double(matsd(i,6)/10),-4);
    summ = sum(matsd(i,3:6));
    for j = 3:6
%         disp(summ);
        sdwei(i,j) = roundn(double(vpa(matsd(i,j)/summ)),-4);
    end
end
disp('###################');
% for i = 1:rowsd
%     insert(conn,'sd_wei1',{'rank','sid','sdweiplat','sdweiscore','sdweilang','sdweischool'},{double(matsd(i,1)),double(matsd(i,2)),chawei(i,1),chawei(i,2),chawei(i,3),chawei(i,4)});    
% end