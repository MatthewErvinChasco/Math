*Legendre.m* computes the factorial of a number in terms of its prime factors, using Legendre's algorithm. For example: 10! = 2^8 * 3^4 * 5^2 * 7

*plog.m* computes the "prime log", by factoring the input number into its prime factors and then summing those factors (excluding factors of 1). For example 6 = 2*3, so its prime log is 2+3 = 5. This process can repeat for any given number until it converges on a prime. For example, plog(14) = 7+2 = 9, plog(9) = 3+3 = 6, plog(6) = 5, plog(5) = 5.
