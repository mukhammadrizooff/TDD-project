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
