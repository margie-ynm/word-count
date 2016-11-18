require('rspec')
require('word_count')

describe('String#word_count') do
  it('will compare first string with an identical second string and return a count of one for its number of occurences') do
    expect("duck".word_count("duck")).to(eq(1))
  end
  it('will compare first string with a different second string and return a count of zero for its number of occurences') do
    expect("duck".word_count("dog")).to(eq(0))
  end
  it('will compare first string with a string of multiple words and return a count of 1 for its number of occurrences in second string') do
    expect("keep calm and quack on".word_count("quack")).to(eq(1))
  end
end
