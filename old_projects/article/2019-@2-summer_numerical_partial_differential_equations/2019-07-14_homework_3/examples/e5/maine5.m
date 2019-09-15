clear
close all
clc


% ��Բ
figure(1);
elli1 = [4   % ָ�꣺4��ʾ��Բ
    0    % ����x����
    0    % ����y���� 
    1    % ���ᾶ1
    2    % ���ᾶ2
    pi/4    % ��ת�Ƕ�(������)
    ];
gd = elli1;
ns = char('P1');
ns = ns';
sf = 'P1';
geom = decsg(gd,sf,ns);


[U,p,e,t,tlist] = My2DParabolicSolver(geom);

for i=1:length(tlist)
pdeplot(p,e,t,'xydata',U(:,i),'zdata',U(:,i)); colorbar('off');
axis([-2,2,-2,2,-2,2]);
title(['time = ', num2str(tlist(i))]);
pause(1);
end