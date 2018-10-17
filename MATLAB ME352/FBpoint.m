function z=FBpoint(X,p)
global theta
% parameters
Lbase=0.4; L1=0.8; L2=0.75; L3=0.65;
A=[0;0];
B=[Lbase;0];
D=L1*[cos(theta);sin(theta)];
z=[norm(X-D)-L2; norm(X-B)-L3];
% so far, the same as before; new stuff follows
if nargin==2
 C=X;
 figure(1)
 clf
 y=[A,B]; plot(y(1,:),y(2,:),'m','linewidth',3)
 axis('image') % important
 axis([-1,1.3,-1,1.4]) % can be adjusted
 hold on
 y=[B,C]; plot(y(1,:),y(2,:),'k','linewidth',3)
 y=[C,D]; plot(y(1,:),y(2,:),'r','linewidth',3)
 y=[D,A]; plot(y(1,:),y(2,:),'b','linewidth',3)
 hold off
end
