# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  ans = []
  str.chars.each do |el|
    next if str.downcase.include?(el)
    ans << el
  end
 ans.join
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  if str.length.even?
    str[str.length/2 -1..str.length/2]
  else
    str[str.length/2 ]
  end
end

# Return the number of vowels in a string.
def num_vowels(str)
  vowels="aeiouAEIOU"
  count = 0
  str.chars.each do |el|
    if vowels.include?(el)
      count+= 1
    end
  end
  count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  return 1 if num == 0
  i = 1
  ans = 1
  until i > num
    ans = i * ans
    i += 1
  end
  ans
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  ans = ""
  arr.each do |el|
    if el == arr.last
      ans << el
        else
          ans << el
          ans << separator
    end
  end
  ans
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  ans = ""
  str.chars.each_with_index do |el,i|
    if i.even?
    ans << el.downcase
    else
      ans << el.upcase
    end
  end
 ans
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  ans = []
  str.split(" ").each do |word|
    if word.length > 4
      ans << word.reverse
    else
      ans << word
    end
  end
  ans.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  i = 1
  ans = []
  while i < n + 1
    if i % 15 == 0
      ans << "fizzbuzz"
    elsif i % 3 == 0
      ans << "fizz"
    elsif i % 5 == 0
      ans << "buzz"
    else
      ans << i
    end
   i += 1
  end
  ans
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr.join("").reverse.chars.map {|el| el.to_i}
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  return false if num == 1
  i = 2
  while i < num
    if num % i == 0
      return false
    end
    i +=1
  end
true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  i = 1
  ans = []
  while i < num + 1
    if num % i == 0
      ans << i
    end
    i += 1
  end
ans
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  ans = []
  fac = factors(num)
  fac.each do |el|
    if prime?(el) == true
      ans << el
    else
      next
    end
  end
  ans
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  evens = arr.select {|el| el.even?}
  odds = arr.select {|el| el.odd?}
    if odds.length < evens.length
      odds[0]
    else
      evens[0]
    end
end
