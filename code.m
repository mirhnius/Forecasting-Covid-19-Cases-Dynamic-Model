n = 5;
A = zeros(n+1);
A(n+1,n+1) = -1 * (n);
for i=1:n
    A(i,i) = -1 * (i-1) * (n - i+2);
    A(i,i+1) = i* (n - i+1);
end

eig_values = eig(A);
[V,J] = jordan(A);

A/V *V %checking

%%
% based on this page:
%https://www.mathworks.com/help/symbolic/solve-a-system-of-differential-equations.html?refresh=true#buxuujb
syms y0(t) y1(t) y2(t) y3(t) y4(t) y5(t)
Y = [y0(t); y1(t); y2(t); y3(t); y4(t); y5(t)];
odes = diff(Y) == J * Y;
Y0 = V \ [0,0,0,0,0,1]'; %finding conditions based on the conditions for p0 ,p1 ,...
cond = [y0(0) == Y0(1), y1(0) == Y0(2), y2(0)== Y0(3), y3(0) == Y0(4), y4(0) == Y0(5), y5(0) == Y0(6)];
[y0Sol(t),y1Sol(t),y2Sol(t),y3Sol(t),y4Sol(t),y5Sol(t)] = dsolve(odes,cond);
y0Sol(t) = simplify(y0Sol);
y1Sol(t) = simplify(y1Sol);
y2Sol(t) = simplify(y2Sol);
y3Sol(t) = simplify(y3Sol);
y4Sol(t) = simplify(y4Sol);
y5Sol(t) = simplify(y5Sol);

i=1;
X=zeros(6,21);
for t=0:0.05:5
    Y=[y0Sol(t); y1Sol(t); y2Sol(t); y3Sol(t); y4Sol(t); y5Sol(t)];
    X(:,i)=V*Y;
    i=i+1;
end
t=0:0.05:5;
plot(t,X);
title('The Probability of Being Healthy')
legend('po(t)', 'p1(t)', 'p2(t)', 'p3(t)', 'p4(t)', 'p5(t)','Location','best')