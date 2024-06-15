clear all
close all

clc

t = 0:0.1:10;
y1 = sin(2*pi*0.1*t);
y2 = square(2*pi*0.15*t);
myArr = 1:50;

for i=1:20
    ax(i) = myArr(i)*3 +2;
end


figure(); hold on; box on;
plot(t,y1,'Color',[0.9290 0.6940 0.1250],'LineWidth',2);
plot(t,y2,'b');
title('My Plot');
xlabel('time (s)');
ylabel('Magnitude)');

figure();
subplot(2,1,1);
plot(t,y1,'Color',[0.9290 0.6940 0.1250],'LineWidth',2);
xlabel('time (s)');
ylabel('Magnitude)');
title('My Plot');

subplot(2,1,2);
bar(t,y2,'b');
xlabel('time (s)');
ylabel('Magnitude)');
title('My Plot');