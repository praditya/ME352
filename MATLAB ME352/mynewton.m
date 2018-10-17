function x = mynewton(foo,x)

n = length(x);
f0 = feval(foo,x);
epsilon = 1e-6;
E = eye(n)*epsilon;
D = E;
k=1;
e = norm(f0);

while (k<60)*(e>1e-9)
    for i = 1:n
        D(:,i) = (feval(foo,x+E(:,i))-f0)/epsilon;
    end
    x = x - D\f0;
    f0 = feval(foo,x);
    e = norm(f0);
    k = k + 1;
end

    
   
