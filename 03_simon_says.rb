def echo(word)
  word
end

def shout(word)
 word.upcase
end

def repeat(word,num = 2)
  ans = []
  num.times do
    ans << word
  end
  ans.join(" ")
end

def start_of_word(word,num)
  word[0...num]
end

def first_word(sentence)
  sentence.split(" ")[0]
end

def titleize(sentence)
  arr = sentence.split(" ")
  skip = ["and","for","over","but","the"]
    arr.each_with_index do |word,i|
      next if skip.include?(word) unless i == 0
      word[0] = word[0].upcase
    end
    arr.join(" ")
end
