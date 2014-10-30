function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%



%X = 12x2
%y = 12x1
%theta = 9x1
%lambda = 2x1

%size(X)
%X = horzcat(ones(size(X),1),X); %X = 12x2
%size(X)
reg = lambda/(2*m)*sumsq(theta(2:end));
hyp = X*theta;


hypsq = (hyp-y)*(hyp-y)';
%sumsq(hyp - y) = 3382.9
%hyp = 1.0 ./ (1.0 + exp(-(X * theta))); %used for logistic regression / sigmoid function
%J = 1/2*m * sumsq(hyp - y) + reg
J = 1/(2*m) * sumsq(hyp-y) + reg;

%J = (-1/m) .* (log(hyp)'*y + log(1 - hyp)'*(1-y)) + reg;

% =========================================================================
grad = 1./m * X' * (hyp-y);	
temp = theta;
temp(1) = 0;
grad = grad + (lambda/m * temp);

grad = grad(:);


end
