function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    t = 0;
	s = 0;

for i=1:m
h=0 ;
for j=1:2
	h = h+X(i,j)*theta(j);
end
s=s+(h-y(i))*X(i,2);
t=t+(h-y(i));
end  
 	k1= theta(1)-(alpha*t)/m;
	k2 =theta(2)-(alpha*s)/m;




theta(1)=k1;
theta(2)=k2;
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end
plotData(X,y);
hold on;
plot(J_history(num_iters),y)
end
