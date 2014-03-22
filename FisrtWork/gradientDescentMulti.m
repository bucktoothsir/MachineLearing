function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)


%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
n = size(X,2);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
s = zeros(n,1);
    
   for j = 1 : n
       
       h = zeros(m,1);
    for i = 1 : m
        
        for p = 1 : n
            h(i) = h(i) + theta(p) * X(i,p);
        end
        
        s(j) = s(j) + ( h(i) - y(i) ) * X(i,j);
    end
    
    theta(j) = theta(j) - alpha * s(j) / m ;
   end
   
%     s0 = 0;
%     s1 = 0;
%     s2 = 0;
%     
%     for i = 1 : m 
%         s0 = s0 + ( theta(1) * X(i,1) + theta(2) * X(i,2) + theta(3) * X(i,3) - y(i)  ) * X(i,1) / m ;
%         s1 = s1 + ( theta(1) * X(i,1) + theta(2) * X(i,2) + theta(3) * X(i,3) - y(i)  ) * X(i,2) / m;  
%         s2 = s2 + ( theta(1) * X(i,1) + theta(2) * X(i,2) + theta(3) * X(i,3) - y(i)  ) * X(i,3) / m; 
%     end
%     
%   temptheta0 = theta(1) - alpha * s0;
%   temptheta1 = theta(2) - alpha * s1;
%   temptheta2 = theta(2) - alpha * s2;
%   theta(1) = temptheta0;
%   theta(2) = temptheta1;
%   theta(3) = temptheta2;
  
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
    if J_history(iter) <= 0.001
        break
end

end
