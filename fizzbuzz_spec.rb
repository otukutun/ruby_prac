#require 'rubygems'
#require 'rspec'
require './fizzbuzz.rb'
describe FizzBuzz do
  subject { FizzBuzz.new }
  context '与えられた数字が1のとき' do
    it '1を返すこと' do
      subject.say(1).should == 1
    end
  end
  context '与えられた数字が2のとき' do
    it '2を返すこと' do
      subject.say(2).should == 2
    end
  end
  context '与えられた数字が３のとき' do
    it 'Fizzを返すこと' do
      subject.say(3).should == 'Fizz'
    end
  end
  context '与えられた数字が5のとき' do
    it 'Buzzを返すこと' do
      subject.say(5).should == 'Buzz'
    end
  end
  context '与えられた数字が9のとき' do
    it 'Fizzを返すこと' do
      subject.say(9).should == 'Fizz'
    end
  end
  context '与えられた数字が15のとき' do
    it 'FizzBuzzを返すこと' do
      subject.say(15).should == 'FizzBuzz'
    end
  end
end
