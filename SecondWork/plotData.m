function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
pos = find( y == 1 );%找到标签为1的行，并保存在pos中
neg = find( y == 0 );

plot( X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7);
plot( X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);%'ko'指点用圆圈表示，圆圈的线是黑色，'MarkerFaceColor'，'y'填充颜色黄色











% =========================================================================



hold off;

end
