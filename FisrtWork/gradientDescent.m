function [theta, J_history] = gradientDescent(X,y,theta,alpha,num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values

m = length(y); % number of training examples



for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    s0 = 0;
    s1 = 0;
    
    for i = 1 : m 
        s1 = s1 + ( theta(1) * X(i,1) + theta(2) * X(i,2) - y(i)  ) * X(i,2) / m;
        s0 = s0 + ( theta(1) * X(i,1) + theta(2) * X(i,2) - y(i)  ) * X(i,1) / m ;
    end
    
  temptheta0 = theta(1) - alpha * s0  ;
  temptheta1 = theta(2) - alpha * s1;
  theta(1) = temptheta0
  theta(2) = temptheta1
  
   % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    if J_history(iter) <= 0.001
        break

end
end


