function [Exp,PLTN] = Legendre(N)
% Factors a factorial into prime factors without having to evaluate the factorial.
% First output is a list of exponents and the second output is a list of
% the corresponding prime number bases.
% For example: 10! = 2^8 * 3^4 * 5^2 * 7
% Copyright 2020 The Mathworks, Inc.

if ~isscalar(N) || ~isnumeric(N) || (N < 0) || (round(N) ~= N)
error('Input is not a positive integer scalar')
end

PLTN = primes(N)'; % bases
Exp = [];
for ii=1:length(PLTN)
    divexp = 1:floor(log(N)/log(PLTN(ii))); %prime's exponents
    Exp = [Exp; sum(floor(N./(PLTN(ii).^(divexp))))];
end
