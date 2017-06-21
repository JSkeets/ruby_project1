def translate (sentence)
  words = sentence.split(" ")
  ans = []
  words.each do |word|
   ans << latinify(word)
  end
  ans.join(" ")
end

def latinify(word)
  vowels ="aeioAEIO"
   ans = []
  i = 0
    until vowels.include?(word[i])
    i += 1
  end
    ans = word[i..-1].downcase + word[0...i].downcase + "ay"
end
