% parametersetting; 20 subunit assembly_model chronic infection
clc
clear

x0(1) = 1000;% A
x0(2) = 0; % 2A
x0(3) = 0; % 3A
x0(4) = 0;% 4A
x0(5) = 0; % 5A
x0(6) = 0;% 6A
x0(7) = 0; % 7A
x0(8) = 0; % 8A
x0(9) = 0;% 9A
x0(10) = 0; % 10A
x0(11) = 0;% 
x0(12) = 0;% 
x0(13) = 0;% 
x0(14) = 0; % 
x0(15) = 0; % 
x0(16) = 0;% 
x0(17) = 0; % 
x0(18) = 0;% 
x0(19) = 0; % 
x0(20) = 0; % 
x0(21) = 100;% b
x0(22) = 0; % c




para(1) = 5e-5; 
para(2) = 1e-1; 
para(3) = 1e-4; 
para(4) = 5e-3;

[t,x]=ode15s(@pathway_model_test_kinetic_20_a,[0 2000],x0,[],para);


% % plot(t,x(:,1),'linewidth',2);%% spike-antibody complex
% % hold on
% % 
% % plot(t,x(:,2),'linewidth',2);%% spike-mRNA-antibody complex
% % hold on
% % 
% % plot(t,x(:,3),'linewidth',2);%% enzyme-antibody complex
% % hold on
% y = x(:,4);
% q(1) = trapz(t,y);
plot(t,x(:,22),'linewidth',2);%% plot virus particles
hold on
% 
% 

para(1) = 5.5e-5; 
para(2) = 1e-1; 


[t,x]=ode15s(@pathway_model_test_kinetic_20_a,[0 2000],x0,[],para);


% % plot(t,x(:,1),'linewidth',2);%% spike-antibody complex
% % hold on
% % 
% % plot(t,x(:,2),'linewidth',2);%% spike-mRNA-antibody complex
% % hold on
% % 
% % plot(t,x(:,3),'linewidth',2);%% enzyme-antibody complex
% % hold on
% y = x(:,4);
% q(1) = trapz(t,y);
plot(t,x(:,22),'linewidth',2);%% plot virus_particles
hold on
