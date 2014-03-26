function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

g = ones(size(z)) ./ ( ones(size(z)) + exp(-z) );%当输入为矩阵时，输出也是每一行sample的对应假设值组成的矩阵



% =============================================================

end
