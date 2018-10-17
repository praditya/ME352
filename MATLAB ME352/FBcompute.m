function FBcompute(x,N,dth)

if nargin==1
    dth = 0.02;
end
if nargin<3
    N = 100;
end

A = x(1,:);
B = x(2,:);
C = x(3,:);
D = x(4,:);

L1 = norm(A-D);
L2 = norm(D-C);
L3 = norm(B-C);

save FBparset L1 L2 L3 A B

global gp globalsolution

AD = D-A;
theta = atan2(AD(2),AD(1));
globalsolution = [C;theta];
gp = gp + dth;

newton('FBcheck',C);
globalsolution = [globalsolution 
bigloop('FBcheck',N);    



end
    