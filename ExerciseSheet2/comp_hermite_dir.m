function [out, out2] = comp_hermite_dir(n, x)
% comp_hermite_rec(n, x)
% computes the hermite polynomial for given n and x
%
% Inputs:
%   n - scalar representing the nth polynomial
%   x - scalar value at which the polynomial will be computed at
%
% Output:
%   out - the nth hermite polynomial evaluated at x
%   out2 - the coefficients of the polynomial in decreasing x^k

if n==0 
    out = 1;
elseif n==1
    out = 2*x;
else
    H_n = ones(1,n+1); % array to store all polynomials up to n
    H_n(2) = 2*x; % set polynomial for n=1 at x
    for idx = 3:n+1 % 
        H_n(idx) = 2*x*H_n(idx-1) - 2*(idx-2)*H_n(idx-2);
    end
    out = H_n(n+1);
end

co_array = zeros(n+1,n+2);
co_array(1) = 1;

%cal co_array for N=1:n and k = 1:n
for n_idx = 2:n+1
    co_array(n_idx,1) = -co_array(n_idx-1,2);
    for k_idx = 2:n+1
        co_array(n_idx,k_idx) = 2*co_array(n_idx-1,k_idx-1) - ...
        (k_idx)*co_array(n_idx-1,k_idx+1);
    end
end

co_array = fliplr(co_array);
out2 = co_array(n+1,2:end);

end