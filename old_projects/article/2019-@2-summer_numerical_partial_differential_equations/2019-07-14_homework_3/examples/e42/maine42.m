clear
close all
clc


% ����
figure(1);
poly1 = [2   % ָ�꣺2��ʾ�����
    5    % ����
    0    % 5�������x����
    1
    2
    1
    0
    0    % 5�������y����
    0
    0.5
    1
    1 ];
gd = poly1;
ns = char('P1');
ns = ns';
sf = 'P1';
geom = decsg(gd,sf,ns);


[U,p,e,t] = My2DEllipticSolver(geom);
pdeplot(p,e,t,'xydata',U,'zdata',U);colorbar('off');
