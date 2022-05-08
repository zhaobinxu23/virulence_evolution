function F=pathway_model_test_kinetic_20_a(t,x,para)

if x(1) < 0
    F(1,1) = 0;
else
F(1,1)=2*para(2)*x(2)-2*para(1)*x(1)*x(1)-para(1)*x(1)*(x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17)+x(18)+x(19))+para(2)*(x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10)+x(11)+x(12)+x(13)+x(14)+x(15)+x(16)+x(17)+x(18)+x(19)+x(20));
end

for i = 2:19
    if x(i)<0
        F(i,1) = 0;
    else
        F(i,1) = para(1)*x(1)*x(i-1) - para(2)*x(i) -para(1)*x(1)*x(i)+para(2)*x(i+1);
    end
end


if x(20) < 0
    F(20,1) = 0;
else
F(20,1)=para(1)*x(1)*x(19)-para(2)*x(20)-para(3)*x(20)*x(21) + para(4)*x(22);
end

if x(21) < 0
    F(21,1) = 0;
else
F(21,1)=para(4)*x(22) - para(3)*x(20)*x(21);
end

if x(22) < 0
    F(22,1) = 0;
else
F(22,1)=-para(4)*x(22) + para(3)*x(20)*x(21);
end


end