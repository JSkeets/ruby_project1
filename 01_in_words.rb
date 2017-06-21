class Fixnum

  def in_words

    case self
    when 0 then return "zero"
    when 1 then return "one"
    when 2 then return "two"
    when 3 then return "three"
    when 4 then return "four"
    when 5 then return"five"
    when 6 then return "six"
    when 7 then return "seven"
    when 8 then return "eight"
    when 9 then return "nine"
    when 10 then return "ten"
    when 11 then return "eleven"
    when 12 then return "twelve"
    when 13 then return "thirteen"
    when 14 then return "fourteen"
    when 15 then return "fifteen"
    when 16 then return "sixteen"
    when 17 then return "seventeen"
    when 18 then return "eighteen"
    when 19 then return "nineteen"
    when 20 then return "twenty"
    when (20..29) then return "twenty" +  " " +digits(self)
    when 30 then return "thirty"
    when (31..39) then return "thirty" + " " + digits(self)
    when 40 then return "forty"
    when (41..49) then return "forty" +  " " +digits(self)
    when 50 then return "fifty"
    when (51..59) then return "fifty" + " " + digits(self)
    when 60 then return "sixty"
    when (61..69) then return "sixty" +  " " +digits(self)
    when 70 then return "seventy"
    when (71..79) then return "seventy" + " " + digits(self)
    when 80 then return "eighty"
    when (81..89) then return "eighty" +  " " +digits(self)
    when 90 then return "ninety"
    when (91..99) then return "ninety" +  " " +digits(self)
    when 100 then return "one hundred"
    when (101..199) then return "one hundred" + " "+ tens(self)
    when 200 then return "two hundred"
    when (201..299 ) then return "two hundred" + " "+ tens(self)
    when 300 then return "three hundred"
    when (301..399 ) then return "three hundred" + " " + tens(self)
    when 400 then return "four hundred"
    when (401..499 ) then return  "four hundred" + " " + tens(self)
    when 500 then return "five hundred"
    when (501..599 ) then return  "five hundred" + " " + tens(self)
    when 600 then return "six hundred"
    when (601..699 ) then return   "six hundred" + " " + tens(self)
    when 700 then return "seven hundred"
    when (701..799 ) then return  "seven hundred" + " " + tens(self)
    when 800 then return "eight hundred"
    when (801..899 ) then return  "eight hundred" + " " + tens(self)
    when 900 then return "nine hundred"
    when (901..999 ) then return     "nine hundred" + " "   +tens(self)
    when 1000 then return "one thousand"
    when (1001..1999) then return "one thousand" + " " + hundreds(self)
    when (2000) then return "two thousand"
    when (2001..2999) then return "two thousand" + " " + hundreds(self)
    when 3000 then return "three thousand"
    when (3001..3999 ) then return "three thousand" + " " + hundreds(self)
    when 4000 then return "four thousand"
    when (4001..4999) then return "four thousand" + " " + hundreds(self)
    when 5000 then return "five thousand"
    when (5001..5999) then return "five thousand" + " " + hundreds(self)
    when 6000 then return "six thousand"
    when (6001..6999) then return "six thousand" + " " + hundreds(self)
    when 7000 then return "seven thousand"
    when (7001..7999) then return "seven thousand" + " " + hundreds(self)
    when 8000 then return "eight thousand"
    when (8001.. 8999) then return "eight thousand" + " " + hundreds(self)
    when 9000 then return "nine thousand"
    when (9001..9999) then return "nine thousand" + " " + hundres(self)

   end
end

private
  def digits (num)
    (num % 10).in_words
  end

  def tens (num)
    (num % 100).in_words
  end

  def hundreds (num)
    (num % 1000).in_words
  end

  def thousands(num)
    num.to_s.chars[0].to_i.in_words + " "+ "thousand" + " "
  end

end
