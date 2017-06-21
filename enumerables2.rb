require 'byebug'

# EASY

# Define a method that returns the sum of all the elements in its argument (an
# array of numbers).
def array_sum(arr)
  return 0 if arr.length == 0
  arr.reduce(:+)
end

# Define a method that returns a boolean indicating whether substring is a
# substring of each string in the long_strings array.
# Hint: you may want a sub_tring? helper method
def in_all_strings?(long_strings, substring)
  long_strings.all? { |string| string.include?(substring) }
end



# Define a method that accepts a string of lower case words (no punctuation) and
# returns an array of letters that occur more than once, sorted alphabetically.
def non_unique_letters(string)
  ans = []
  string.chars.sort.chunk { |el| el }.to_a.each do |char_chunk|
  if char_chunk.flatten.length > 2
    ans << char_chunk[0]
  end
  end
  alpha = ("a".."z").to_a
  ans.sort.select { |el| alpha.include?(el) }
end

# Define a method that returns an array of the longest two words (in order) in
# the method's argument. Ignore punctuation!
def longest_two_words(string)
  string.split(" ").sort_by { |el| el.length}[-2..-1]
end

# MEDIUM

# Define a method that takes a string of lower-case letters and returns an array
# of all the letters that do not occur in the method's argument.
def missing_letters(string)
  alpha = ("a".."z").to_a
  alpha - string.chars
end

# Define a method that accepts two years and returns an array of the years
# within that range (inclusive) that have no repeated digits. Hint: helper
# method?
def no_repeat_years(first_yr, last_yr)
  ans = []
  (first_yr..last_yr).to_a.each do |year|
    if not_repeat_year?(year)
      ans << year
    end
  end
  ans
end

def not_repeat_year?(year)
  return true if year.to_s.chars.uniq.length == year.to_s.length
  false
end

# HARD

# Define a method that, given an array of songs at the top of the charts,
# returns the songs that only stayed on the chart for a week at a time. Each
# element corresponds to a song at the top of the charts for one particular
# week. Songs CAN reappear on the chart, but if they don't appear in consecutive
# weeks, they're "one-week wonders." Suggested strategy: find the songs that
# appear multiple times in a row and remove them. You may wish to write a helper
# method no_repeats?
def one_week_wonders(songs)
  ans = []
  x = songs.chunk { |el| el }.to_a
  x.each do |el|
    if el.flatten.length > 2
      ans << el
    end
  end
  (songs - ans.flatten.uniq).uniq
end

# Define a method that, given a string of words, returns the word that has the
# letter "c" closest to the end of it. If there's a tie, return the earlier
# word. Ignore punctuation. If there's no "c", return an empty string. You may
# wish to write the helper methods c_distance and remove_punctuation.

def for_cs_sake(string)
  remove_punctuation(string)
  c_words = string.split.select { |word| word.downcase.include?("c") }
  return "" if c_words.empty?
  c_words.sort_by { |word| c_distance(word) }.first
end

def c_distance(word)
  word.reverse.index("c")
end

def remove_punctuation(string)
  string.delete!(",.;:!?")
end

# Define a method that, given an array of numbers, returns a nested array of
# two-element arrays that each contain the start and end indices of whenever a
# number appears multiple times in a row. repeated_number_ranges([1, 1, 2]) =>
# [[0, 1]] repeated_number_ranges([1, 2, 3, 3, 4, 4, 4]) => [[2, 3], [4, 6]]

def repeated_number_ranges(arr)
  ans = []
  suba = []
  arr.each_with_index do |el,i|
    currel = el
    nextel = arr[i+1]
    if nextel == currel && suba.empty?
      suba <<  i
    end
    if suba.length == 1  && nextel != currel
      suba << i
      ans << suba
      suba = []
    end
  end
  ans
end
