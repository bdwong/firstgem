require 'spec_helper'
require 'firstgem'

describe 'Shape' do
  it "should initialize with no name" do
    s = Shape.new
    s.name.should be_nil
  end

  it "should initialize with name" do
    s = ::Firstgem::Shape.new('triangle')
    s.name.should == 'triangle'
  end

  it 'should assign to the shape name' do
    s = Shape.new
    s.name = 'square'
    s.name.should == 'square'
  end

  it "should describe a circle" do
    s = Shape.new('circle')
    s.describe.should == 'I am a circle.'
  end

  it "should describe an oval" do
    s = Shape.new('oval')
    s.describe.should == 'I am an oval.'
  end
end
