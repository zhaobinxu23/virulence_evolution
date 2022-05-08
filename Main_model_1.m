% parametersetting; 

%% model 1
clc
clear

x0(1) = 0;% virus_structure_antibody_complex
x0(2) = 0; % virus_complex_antibody_complex
x0(3) = 0; % enzyme_antibody_complex
x0(4) = 1;% virus_complex(=mRNA+structure)
x0(5) = 10; % antibody_1 which bind structure protein
x0(6) = 10; % antibody_2 which bind to enzyme
x0(7) = 100; % mRNA level
x0(8) = 100; % structure protein level
x0(9) = 0; % enzyme level initial
x0(10) = 0; % initial enzyme_mRNA complex
x0(11) = 0;


para(1) = 5e-6; 
para(2) = 1e-14; 
para(3) = 5e-6; 
para(4) = 1e-14;
para(5) = 1e-3;
para(6) = 1; %% this is the parameter that represented as k-5 in the paper
para(7) = 1e-5; 
para(8) = 1e-5; 
para(9) = 0.002; 
para(10) = 1.1;
para(11) = 0.99;
para(12) = 1.1;
para(13) = 0.1;
para(14) = 0.15; 
para(15) = 0.002; 
para(16) = 0.5; 
para(17) = 0.5; 
[t,x]=ode15s(@pathway_model_omicron,[0 2000],x0,[],para);


% plot(t,x(:,1),'linewidth',2);%% structure-antibody complex
% hold on
% 
% plot(t,x(:,2),'linewidth',2);%% structure-mRNA-antibody complex
% hold on
% 
% plot(t,x(:,3),'linewidth',2);%% enzyme-antibody complex
% hold on
y = x(:,4);
q(1) = trapz(t,y);
plot(t,x(:,4),'linewidth',2);%% virus particles
hold on
% 
plot(t,x(:,5),'linewidth',2);%% antibody_1
hold on

% 

para(6) = 0.5; 
 
[t,x]=ode15s(@pathway_model_omicron,[0 2000],x0,[],para);

plot(t,x(:,4),'linewidth',2);%% 病毒颗粒
hold on

plot(t,x(:,5),'linewidth',2);%% antibody_1
hold on
y = x(:,4);
q(2) = trapz(t,y);




para(6) = 0.1816;  
 
[t,x]=ode15s(@pathway_model_omicron,[0 2000],x0,[],para);

plot(t,x(:,4),'linewidth',2);%% 病毒颗粒
hold on

plot(t,x(:,5),'linewidth',2);%% antibody_1
hold on

y = x(:,4);
q(3) = trapz(t,y);



para(6) = 0.1;  
 
[t,x]=ode15s(@pathway_model_omicron,[0 2000],x0,[],para);

plot(t,x(:,4),'linewidth',2);%% 病毒颗粒
hold on

plot(t,x(:,5),'linewidth',2);%% antibody_1
hold on

y = x(:,4);
q(4) = trapz(t,y);


