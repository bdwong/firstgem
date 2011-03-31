require 'spec_helper'

Infinity = 1.0/0.0

describe 'Calculator' do
  it "should initialize with no name" do
    s = Calculator.new
    s.name.should == ""
  end

  it 'should assign to the calculator name' do
    c = Calculator.new
    c.name = 'Marvin'
    c.name.should == 'Marvin'
  end

  it "should add" do
    c = Calculator.new
    c.Add(1, 3).should == 4.0
  end

  it "should subtract" do
    c = Calculator.new
    c.Subtract(1.5, 3).should == -1.5
  end

  it "should multiply" do
    c = Calculator.new
    c.Multiply(4, 5).should == 20.0
  end

  it "should divide" do
    c = Calculator.new
    c.Divide(14, 2).should == 7.0
  end

  it "should divide by zero" do
    c = Calculator.new
    c.Divide(14, 0).should == Infinity
  end
end
