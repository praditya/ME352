%% plotcam

clear all
syms x
y = 170*(sin(x/2))^6/(1+6*(sin(x/2))^6);
a = [ 0 2*pi];
rho = 60;
% ezplot(y,a)
rb = rho - y - diff(y,x,2);
p = y + diff(y,x,2);
ezplot(p,a)
grid on;




% theta=linspace(0,2*pi,300);
% y=(sin(theta).^2)./(1+sin(theta).^2);
% 
% plot(theta,y)
% subplot(1,2,1)