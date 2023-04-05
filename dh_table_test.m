syms theta6 theta5 theta4


%[theta, alpha, r, d].
matrix = [90 90 0 39;180+theta6 90 0 80;theta5 90 0 36;0 -90 0 150;90+theta4 90 0 0;0 0 0 145];
%matrix = [90 90 0 39;180+theta2 90 0 80;theta3 90 0 36];
transm = DH_HTM(matrix,'d');
tran1 = [1 0 0 0;0 0 -1 0;0 1 0 0;0 0 0 1];
transm = tran1*transm;

theta6 = 0;
theta5 = 0;
theta4 = 0;

x_end = transm(1,4);
y_end = transm(2,4);
z_end = transm(3,4);

%set up ranges
theta6_range = [-45,45];
theta5_range = [-80,80];
theta4_range = [-45,45];
% Substitute joint angles into the end-effector position expressions
x_end_val = double(subs(x_end));
y_end_val = double(subs(y_end));
z_end_val = double(subs(z_end));
% Display the results
fprintf('x_end = %.2f\n', x_end_val);
fprintf('y_end = %.2f\n', y_end_val);
fprintf('z_end = %.2f\n', z_end_val);
