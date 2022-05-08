function F=pathway_model_omicron(t,x,para)
% the rate constant parameters
% x0(1) = 0;% virus_spike_antibody_complex
% x0(2) = 0; % virus_complex_antibody_complex
% x0(3) = 0; % enzyme_antibody_complex
% x0(4) = 1000;% virus_complex(=mRNA+spike)
% x0(5) = 1; % antibody_1 which bind spike protein
% x0(6) = 1; % antibody_2 which bind to enzyme
% x0(7) = 0; % mRNA level
% x0(8) = 0; % spike protein level
% x0(9) = 0; % enzyme level initial
% x0(10) = 0; % initial enzyme_mRNA complex
% x0(11) = 0; % mRNA-Enzyme-antibody2 complex
%% explain para  in word document
% 
%
%
%
if x(1) < 0
    F(1,1) = 0;
else
F(1,1)=para(1)*x(8)*x(5)-para(2)*x(1)-x(1);
end

if x(2) < 0
    F(2,1) = 0;
else
F(2,1)=para(1)*x(4)*x(5)-para(2)*x(2)-x(2);
end

if x(3) < 0
    F(3,1) = 0;
else
F(3,1)=para(3)*x(9)*x(6)-para(4)*x(3)-x(3);
end

if x(4) < 0
    F(4,1) = 0;
else
F(4,1)=para(5)*x(7)*x(8)-para(6)*x(4)+ para(2)*x(2)-para(1)*x(4)*x(5)-para(9)*x(4);
end

if x(5) < 0
    F(5,1) = 0;
else
    
    F(5,1) = (x(1)+x(2));
   
%  F(5,1)=-para(1)*x(4)*x(5)+para(2)*x(2)+ para(2)*x(1)-para(1)*x(5)*x(8)+(x(1)+x(2))*para(10)-para(11)*(x(5));
%  F(5,1)=x(1)+x(2); %% +x(5))*para(10)*para(11)-x(5);
    

end

if x(6) < 0
    F(6,1) = 0;
else  
    
%         F(6,1)= x(3)+x(11);
 F(6,1) = (x(3)+x(11));  
% F(6,1)=-para(3)*x(6)*x(9)+para(4)*x(3)+x(3)*para(12)-para(11)*(x(6));
%  F(6,1)= x(3)+x(11); %%+x(6))*para(12)*para(11)-x(6);
     
   
end

if x(7) < 0
    F(7,1) = 0;
else
F(7,1)=-para(7)*x(7)*x(9)+para(8)*x(10)+x(10)*para(14)-para(5)*x(7)*x(8)+para(6)*x(4)-para(13)*x(7);
end

if x(8) < 0
    F(8,1) = 0;
else
    

F(8,1)=para(16)*x(7)-para(5)*x(7)*x(8)+para(6)*x(4)-para(1)*x(5)*x(8)+para(2)*x(1)-para(15)*x(8);
end

if x(9) < 0
    F(9,1) = 0;
else

F(9,1)=para(17)*x(7)-para(7)*x(7)*x(9)+para(8)*x(10)-para(3)*x(6)*x(9)+para(4)*x(3)-para(15)*x(9);
end

if x(10) < 0
    F(10,1) =  0;
else

F(10,1)=para(7)*x(7)*x(9)-para(8)*x(10)-para(15)*x(10)-para(3)*x(10)*x(6)+para(4)*x(11);
end

if x(11) < 0
    F(11,1) =  0;
else

F(11,1)=para(3)*x(10)*x(6)-para(4)*x(11)-x(11);
end


 
end