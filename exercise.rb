# We need prime numbers(number only divisible by 1 and itself).
# Write a method that takes a maximum bound and returns all primes starting
# with 0 up-to and including the maximum bound.
#
# For example:
# prime 11
#
# Should return an array that looks like this:
# [2,3,5,7,11]
#
# Hint:Using a range from 2 to the number's square root should allow
# you to determine all possible factors.

def get_primes(upper_bound)
  primes = []
  (2..upper_bound).each do |potential_prime|
    is_prime = true #default to true if the below loop doesn't prove it false
    (2..(potential_prime - 1)).each do |divisor| #we start from 2 because that is the first number
      #that we know is not prime - 1 is there so we don't divide the number by itself because
      #we know that it is possible
       if potential_prime % divisor == 0
         is_prime = false
         break
       end
    end

  #HERE - we know if is_prime is true, it must be prime
    if is_prime
    primes << potential_prime #this is how you get all the numbers to the max number
   end
end

  return primes
end

primes = get_primes(50)
puts primes
