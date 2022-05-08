function F=pathway_model_test_kinetic_10_a(t,x,para)


F(1,1)=2*para(2)*x(2)-2*para(1)*x(1)*x(1)-para(1)*x(1)*(x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9))+para(2)*(x(3)+x(4)+x(5)+x(6)+x(7)+x(8)+x(9)+x(10));


F(2,1)=para(1)*x(1)*x(1) - para(2)*x(2)-para(1)*x(1)*x(2)+para(2)*x(3);


F(3,1)=para(1)*x(1)*x(2) - para(2)*x(3)-para(1)*x(1)*x(3)+para(2)*x(4);



F(4,1)=para(1)*x(1)*x(3) - para(2)*x(4)-para(1)*x(1)*x(4)+para(2)*x(5);


F(5,1)=para(1)*x(1)*x(4) - para(2)*x(5)-para(1)*x(1)*x(5)+para(2)*x(6);


F(6,1)=para(1)*x(1)*x(5) - para(2)*x(6)-para(1)*x(1)*x(6)+para(2)*x(7);


F(7,1)=para(1)*x(1)*x(6) - para(2)*x(7)-para(1)*x(1)*x(7)+para(2)*x(8);


F(8,1)=para(1)*x(1)*x(7) - para(2)*x(8)-para(1)*x(1)*x(8)+para(2)*x(9);


F(9,1)=para(1)*x(1)*x(8) - para(2)*x(9)-para(1)*x(1)*x(9)+para(2)*x(10);


F(10,1)=para(1)*x(1)*x(9)-para(2)*x(10)-para(3)*x(10)*x(11) + para(4)*x(12);

F(11,1)=para(4)*x(12) - para(3)*x(10)*x(11);

F(12,1)=-para(4)*x(12) + para(3)*x(10)*x(11);



end