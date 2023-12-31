
def prime_py(int range_start,int range_end):
  cdef int count_of_primes = 0
  cdef int num
  cdef int div_num

  range_start = range_start if range_start >= 2 else 2
  for num in range(range_start, range_end+1):
    for div_num in range(2, num):
      if (num % div_num) == 0:
        break
    else:
      count_of_primes += 1
  return count_of_primes