%% �������������Ƭ���Բ�ֵ
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
% [p,e,t] = initmesh(geom,'hmax',0.25);
[p,e,t] = initmesh(geom,'hmax',0.1);
subplot(1,3,1); pdemesh(p,e,t);


x = p(1,:);
y = p(2,:);
uh = sin(pi*x).*sin(pi*y);
subplot(1,3,2); pdeplot(p,e,t,'zdata',uh);


subplot(1,3,3); pdeplot(p,e,t,'xydata',uh','zdata',uh');
colorbar('off');
view(3);