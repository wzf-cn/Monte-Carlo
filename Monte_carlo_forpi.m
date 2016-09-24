n = 4000000;    % generate n points
r = rand(2,n);  % random number
x = r(1,:);
y = r(2,:);
d = (x.^2+y.^2).^0.5;
outside = d>1;  % points outside the circle
inside = d<=1;  % points inside the circle
num = sum(sum(outside));
pre = (n - num)/n*4 % pi calculated by monte carlo method
plot(x(outside),y(outside),'ro',x(inside),y(inside),'gx');
