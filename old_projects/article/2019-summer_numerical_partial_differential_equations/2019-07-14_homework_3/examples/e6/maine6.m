clear
close all
clc


% ����
figure(1);
rect1 = [3   % ָ�꣺3��ʾ����
    4    % ����
    0    % �ĸ������x����
    1
    1
    0
    0    % �ĸ������y����
    0
    1
    1 ];
gd = rect1;
ns = char('R1');
ns = ns';
sf = 'R1';
geom = decsg(gd,sf,ns);


[U,p,e,t] = My2DEllipticSolver(geom);
pdeplot(p,e,t,'xydata',U,'zdata',U);colorbar('off');
