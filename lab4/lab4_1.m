% Matlab script to calculate numerical differentiation of arctan(x)
clc;
clear;
close all;
a = 1;
truVal = 1/(1 + a.^2);
h = 1e-4;
% Forward difference formula
fwdDiff = (f(a + h) - f(a))/h;
errFwd = abs(truVal - fwdDiff);
disp(['Error in forward difference: ', num2str(errFwd)]);
% Backward difference formula
bckDiff = (f(a) - f(a - h))/h;
errBck = abs(truVal - bckDiff);
disp(['Error in backward difference: ', num2str(errBck)]);
% Central difference formula
cntrDiff = (f(a + h) - f(a - h))/(2*h);
errCntr = abs(truVal - cntrDiff);
disp(['Error in central difference: ', num2str(errCntr)]);
% PLoting graph for diffrent method
semilogy([errFwd, errBck, errCntr, errIFwd, errIBck, errICntr], 'o')
title('Error for the step size h = 1e # 04')
ylabel('Error')
xlabel('Different error methods')
% Defining function for tan inverse(x)
function fx = f(x)
  fx = atan(x);
end


% Matlab script to calculate numerical differentiation of arctan(x)
clc;
clear;
close all;
a = 1;
truVal = 1/(1 + a.^2);
h = 10.^[-1:-1:-8];
% Forward difference formula
fwdDiff = (f(a + h) - f(a))./h;
errFwd = abs(truVal - fwdDiff);
disp(['Error in forward difference: ', num2str(errFwd)]);
% Backward difference formula
bckDiff = (f(a) - f(a - h))./h;
errBck = abs(truVal - bckDiff);
disp(['Error in backward difference: ', num2str(errBck)]);
% Central difference formula
cntrDiff = (f(a + h) - f(a - h))./(2.*h);
errCntr = abs(truVal - cntrDiff);
disp(['Error in central difference: ', num2str(errCntr)]);
% Plots
loglog(h, errFwd, '-b', h, errBck, '-g', h, errCntr, '-m');
hold on;
loglog(h, errIFwd, '--b', h, errIBck, '--g', h, errICntr, '--m');
legend('Forward Error', 'Backward Error', 'Central Error', 'Location', 'northwest');
% Function
function fx = f(x)
  fx = atan(x);
end

%Truncation Error is caused by a truncated Taylor series expansion replacing the spatial derivative and time derivative. The order of truncation error is proportional to #x (grid size) and #t (step size). This implies that as #x and #t decreases, the truncation error decreases. However, decreased grid size and timestep size result in an increased number of computational operations, which introduces additional error called computational round-off error. Therefore, the trade-off between truncation error and round-off error should be examined carefully.
