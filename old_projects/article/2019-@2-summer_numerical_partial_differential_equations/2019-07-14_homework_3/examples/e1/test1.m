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



circle1 = [1   %ָ�꣺1��ʾԲ
    0.5    %Բ��x
    0.5    %Բ��y
    0.2];  %�뾶

circle1 = [circle1;zeros(size(rect1,1)-size(circle1,1),1)];
gd = [rect1,circle1];
ns = char('R1','C1');
ns = ns';

sf = 'R1+C1';
geom = decsg(gd,sf,ns);
[p,e,t] = initmesh(geom,'hmax',0.1);

xc = (p(1,t(1,:))+p(1,t(2,:))+p(1,t(3,:)))/3;
yc = (p(2,t(1,:))+p(2,t(2,:))+p(2,t(3,:)))/3;
innerelem = find( (xc-0.5).^2+(yc-0.5).^2 <= 0.2^2);
figure(1);
pdemesh(p,e,t);
figure(2);
pdemesh(p,e,t(:,innerelem));