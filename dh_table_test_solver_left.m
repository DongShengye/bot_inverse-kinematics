syms theta2 theta3 theta5



matrix =  [180 90 0 39;theta2+180 90 0 80;theta3 90 0 36;180 90 0 150;90+theta5 90 0 0;0 0 0 145];
transm = DH_HTM(matrix,'d');
tran1 = [0 0 -1 0;0 1 0 0;1 0 0 0;0 0 0 1];
tran2 = [1 0 0 0;0 0 1 0;0 -1 0 0;0 0 0 1];
transm = tran1*tran2*transm;


x_end = simplify(transm(1,4));
y_end = simplify(transm(2,4));
z_end = simplify(transm(3,4));

%disp(x_end);
%disp(y_end);
%disp(z_end);

%set up ranges
%theta6_range = [-45,45];
%theta5_range = [-80,80];
%theta4_range = [-45,45];

Y = vpasolve([x_end == 77.47, y_end == 75, z_end == 294.98], [theta2,theta3,theta5]);
disp(Y)