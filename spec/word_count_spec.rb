require('rspec')
require('word_count')

describe('String#word_count') do
  it('will compare first string with an identical second string and return a count of one for its number of occurences') do
    expect("duck".word_count('duck')).to(eq(1))
  end
end
