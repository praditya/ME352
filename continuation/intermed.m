function z=intermed(X)

global globalsolution gp continuationfname
[m,n]=size(globalsolution);

nx=m-1;
ds=norm(globalsolution(:,n-1)-globalsolution(:,n));

x=X(1:nx);
gp=X(m);

z=feval(continuationfname,x);
z=[z; norm(globalsolution(:,end)-X)-ds];
