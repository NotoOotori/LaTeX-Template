clear
close all
clc


% ����
figure(1);
% Բ
figure(1);
circle1 = [1   %ָ�꣺1��ʾԲ
    0    %Բ��x
    0    %Բ��y
    1];  %�뾶

gd = circle1;
ns = char('C1');
ns = ns';
sf = 'C1';
geom = decsg(gd,sf,ns);


[U,p,e,t] = My2DEllipticSolver(geom);
pdeplot(p,e,t,'xydata',U,'zdata',U);
colorbar('off');