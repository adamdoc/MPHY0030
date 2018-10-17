clear;

% set the number of values of n and x to be calculated
n_array = 0:12;
x_array = 0:3;

% create empty arrays for the polynomial outputs to be stored
v_hermiteH = zeros(length(n_array),length(x_array));
v_rec = zeros(length(n_array),length(x_array));
v_dir = zeros(length(n_array),length(x_array));

% double for loop to calculate polynomials at all values of x and n
for n_idx = 1:length(n_array)
    for x_idx = 1:length(x_array)
        v_hermiteH(n_idx,x_idx) = hermiteH(n_array(n_idx),x_array(x_idx));
    end
end

tic;
for n_idx = 1:length(n_array)
    for x_idx = 1:length(x_array)
        v_rec(n_idx,x_idx) = comp_hermite_rec(n_array(n_idx),x_array(x_idx));
    end
end
rec_t = toc;

tic;
for n_idx = 1:length(n_array)
    for x_idx = 1:length(x_array)
        v_dir(n_idx,x_idx) = comp_hermite_dir(n_array(n_idx),x_array(x_idx));
    end
end
dir_t = toc;

% compare outputs from rec and dir functions to hermiteH function
if v_rec == v_hermiteH
    if v_dir == v_hermiteH
        disp('Polynomials calculated sucessfully')
    else 
        warning('Direct function inconsistent')
    end
else
    warning('Recursion function inconsistent')
end

% direct function faster, particularly as n increases past 20

% testing coefficients
n = 4; x= 5;
[H, c] = comp_hermite_dir(n,x);

% calculate hermite polynomical at x using polynomial in terms of x
H_2 = c(1)*x^(n)+c(2)*x^(n-1)+c(3)*x^(n-2)+c(4)*x^(n-4)+c(5);

