syms theta1 theta2 theta3

%matrix = [90+theta1 90 39 0;theta2 90 0 80;0 90 0 36;theta3 -90 0 150;0 0 0 0];
matrix = [90+theta1 90 -39 0];
transm = DH_HTM(matrix,'d');
tran1 = [1 0 0 0;0 0 -1 0;0 1 0 0;0 0 0 1];
transm = tran1*transm;


theta1 = 90;
theta2 = 0;
theta3 = 0;

x_end = transm(1,4);
y_end = transm(2,4);
z_end = transm(3,4);

% Substitute joint angles into the end-effector position expressions
x_end_val = double(subs(x_end));
y_end_val = double(subs(y_end));
z_end_val = double(subs(z_end));
% Display the results
fprintf('x_end = %.2f\n', x_end_val);
fprintf('y_end = %.2f\n', y_end_val);
fprintf('z_end = %.2f\n', z_end_val);