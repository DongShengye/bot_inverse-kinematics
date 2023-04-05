syms theta6 theta5 theta4



matrix = [90 90 0 39;180+theta6 90 0 80;theta5 90 0 36;0 -90 0 150;90+theta4 90 0 0;0 0 0 145];
transm = DH_HTM(matrix,'d');
tran1 = [1 0 0 0;0 0 -1 0;0 1 0 0;0 0 0 1];
transm = tran1*transm;


x_end = simplify(transm(1,4));
y_end = simplify(transm(2,4));
z_end = simplify(transm(3,4));

disp(x_end);
disp(y_end);
disp(z_end);

%set up ranges
%theta6_range = [-45,45];
%theta5_range = [-80,80];
%theta4_range = [-45,45];

Y = vpasolve([x_end == 130, y_end == -202, z_end == 75], [theta6,theta5,theta4]);
disp(Y)