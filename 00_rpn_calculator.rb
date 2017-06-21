class RPNCalculator
  # TODO: your code goes here!
  def initialize
    @stack = []
  end

  def push(num)
    @stack << num
  end

  def value
    @stack[-1]
  end

  def plus
    operation(:+)
  end

  def minus
    operation(:-)
  end

  def times
    operation(:*)
  end

  def divide
    operation(:/)
  end

  def tokens(string)
    ans = []
    string.split(" ").each do |ch|
      if ch == "+"
        ans << :+
      elsif ch == "-"
        ans << :-
      elsif ch == "*"
        ans << :*
      elsif ch == "/"
        ans << :/
      else
        ans << ch.to_i
      end
    end
    ans
  end

  def evaluate(string)
    tokens(string).each do |el|
      case el
      when Integer
        push(el)
      else
        operation(el)
      end
    end
    self.value
  end

  private

    def operation (symb)
      raise "calculator is empty" if @stack.length < 2
      lastel = @stack.pop
      firstel = @stack.pop
        if symb == :+
          @stack << (lastel + firstel)
        elsif symb == :-
          @stack << (firstel - lastel)
        elsif symb == :*
          @stack << (lastel * firstel)
        elsif symb == :/
          @stack << (firstel.to_f / lastel.to_f)
        else
          @stack << firstel
          @stack << lastel
        end
    end
end
