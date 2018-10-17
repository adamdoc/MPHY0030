function out = comp_hermite_rec(n, x)
% comp_hermite_rec(n, x)
% computes the hermite polynomial for given n and x
%
% Inputs:
%   n - scalar representing the nth polynomial
%   x - scalar value at which the polynomial will be computed at
%
% Output:
%   out - the nth hermite polynomial evaluated at x

if n==0 
    out = 1;
elseif n==1
    out = 2*x;
else
    out = 2*x*comp_hermite_rec(n-1,x) - 2*(n-1)*comp_hermite_rec(n-2,x);
end

end