require_relative '../solver_file'

describe Solver do
  before :all do
    @solver = Solver.new
  end
  context 'Method Factorial' do
    it 'Returns a positive integer factorial' do
      factorial = @solver.factorial(5)
      expect(factorial).to eql 120
    end

    it 'Returns the zero factorial' do
      factorial = @solver.factorial(0)
      expect(factorial).to eql 1
    end

    it 'If the input parameter is a negative integer, the argument returns an error' do
      expect { @solver.factorial(-5) }.to raise_exception ArgumentError
    end

    it 'If the input parameter is a string, it returns an argument error' do
      expect { @solver.factorial('5') }.to raise_exception ArgumentError
    end
  end

context 'Method Reverse' do
    it 'If the input parameter is not a string, it returns an argument error' do
      expect { @solver.reverse(15) }.to raise_exception ArgumentError
    end
    it 'Return the input string in reverse order' do
      reverse_string = @solver.reverse('hello')
      expect(reverse_string).to eql 'olleh'
    end
  end
  context 'Method Fizzbuzz' do
    it 'If the input parameter is not an integer, the argument returns an error' do
      expect { @solver.fizzbuzz('50') }.to raise_exception ArgumentError
    end
    it 'If the entered number is divisible by 3, it returns "fizz"' do
      expect(@solver.fizzbuzz(9)).to eql 'fizz'
    end
    it 'If the entered number is divisible by 5, it returns "buzz"' do
      expect(@solver.fizzbuzz(10)).to eql 'buzz'
    end
    it 'If the entered number is divisible by 3 and 5, it returns "fizzbuzz"' do
      expect(@solver.fizzbuzz(30)).to eql 'fizzbuzz'
    end
    it 'If the entered number is not divisible by 3, 5, and 15, it returns it as a line' do
      expect(@solver.fizzbuzz(7)).to eql '7'
    end
  end
end
