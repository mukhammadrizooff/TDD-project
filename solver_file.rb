class Solver
  def factorial(num)
    raise ArgumentError unless num.is_a?(Integer) && num >= 0
    return 1 if num.zero?

    num * factorial(num - 1)
  end

  def reverse(str)
    raise ArgumentError unless str.is_a?(String)

    str.reverse
  end

  
end
