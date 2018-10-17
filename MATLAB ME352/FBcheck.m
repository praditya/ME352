function z = FBcheck(C)

global gp 
theta = gp;

load FBparset
D = A + L1*[cos(theta);sin(theta)];
z = [norm(D-C)-L2;norm(B-C)-L3];

end