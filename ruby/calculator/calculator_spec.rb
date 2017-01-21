# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

=begin
require_relative 'calculator'

describe Calculator do
  let(:calculator) { Calculator.new }

  it "adds two integers" do
    expect(calculator.add(3,4)).to eq 7
  end

  it "subtracts two integers" do
    expect(calculator.subtract(7,1)).to eq 6
  end

  it "multiplies two integers" do
    expect(calculator.multiply(2,3)).to eq 6
  end
end
=end

###########
## VIDEO RSpec
###########

## STEPS: ##
=begin
1) Create two files.  One ending in _spec.rb and in spec subdirectory of project.  Other is actual code file.
2) In code file create the: ' Calculator class ' so, rspec can initialize it.
3) Add to top of testing file: require_relative 'calculator'
4) Write Method Descriptions like below.
5) Run in Bash: ' rspec calculator_spec.rb '
6) Detailed Report: ' rspec -fd calculator_spec.rb '
7) Add more details to expectations / method descriptions.
8) To create variable to initialize a new instance of the class: ' let(:calculator) { Calculator.new } '

=end

### Step 4 ###
=begin

require_relative 'calculator'

describe Calculator do
    it "adds two integers" do
    end

    it "subtracts two integers" do
    end

    it "multiplies two integers" do
    end
end

=end


### Step 7 ###

require_relative 'calculator'

describe Calculator do
    let(:calculator) { Calculator.new } # replaces: calculator = Calculator.new

    it "adds two integers" do
        # calculator = Calculator.new  # replaced by: let(:calculator) { Calculator.new }
        expect(calculator.add(3,4)).to eq 7
    end

    it "subtracts two integers" do
        # calculator = Calculator.new  # replaced by: let(:calculator) { Calculator.new }
        expect(calculator.subtract(7,1)).to eq 6
    end

    it "multiplies two integers" do
        # calculator = Calculator.new  # replaced by: let(:calculator) { Calculator.new }
        expect(calculator.multiply(2,3)).to eq 6
    end

    it "divides two integers" do
        # calculator = Calculator.new  # replaced by: let(:calculator) { Calculator.new }
        expect(calculator.divide(6,3)).to eq 2
    end


end
