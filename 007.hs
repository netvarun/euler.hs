primes = 2 : filter ((==1) . length . primeFactors) [3,5..]

primeFactors n = factors n primes

factors n (p:ps) | p*p > n = [n]
                 | mod n p == 0 = p : factors (div n p) ps
                 | otherwise = factors n ps

solve = primes !! 10000

main = print solve
