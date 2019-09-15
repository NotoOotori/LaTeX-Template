%% �������������������ʷ�
clear
clc

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
[p,e,t] = initmesh(geom,'hmax',0.1);
pdemesh(p,e,t);
view(2);


% ����
figure(2);
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
[p,e,t] = initmesh(geom,'hmax',0.1);
pdemesh(p,e,t);
view(2);


% �����
figure(3);
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
[p,e,t] = initmesh(geom,'hmax',0.1);
pdemesh(p,e,t);
view(2);


% ��Բ
figure(4);
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
[p,e,t] = initmesh(geom,'hmax',0.1);
pdemesh(p,e,t);
view(2);


% ���Ӽ�����
figure(5);
circle2 = [1
    1.5
    1.5
    1];
circle1 = [circle1;zeros(size(rect1,1)-size(circle1,1),1)];
circle2 = [circle2;zeros(size(rect1,1)-size(circle2,1),1)];
gd = [rect1,circle1,circle2];
ns = char('R1','C1','C2');
ns = ns';
sf = '(R1+C2)-C1';
geom = decsg(gd,sf,ns);
[p,e,t] = initmesh(geom,'hmax',0.25);
pdemesh(p,e,t);
pause;
[p,e,t] = refinemesh(geom,p,e,t); 
pdemesh(p,e,t);
view(2);

