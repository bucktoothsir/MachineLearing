function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
n = size(theta,1);
h =zeros(m,1);
% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
for i = 1 : m
    for j = 1 : n
        h(i) =  h(i) + theta(j) * X(i,j);
    end
    J = J + ( h(i) - y(i) ) ^ 2
end
% for i = 1 : m
%     j = ( theta(1) * X(i,1) + theta(2) * X(i,2) + theta(3) * X(i,3) - y(i) ) ^ 2;
%     J = J + j;
% end
J = J / (2 * m);






% =========================================================================

end
