require('rspec')
require('word_count')

describe('String#word_count') do
  it('will compare first string with an identical second string and return a count of one for its number of occurences') do
    expect("duck".word_count("duck")).to(eq(1))
  end
  it('will compare first string with a different second string and return a count of zero for its number of occurences') do
    expect("duck".word_count("dog")).to(eq(0))
  end
  it('will compare a string of multiple words with a single word string and return a count of 1 for its number of occurrences in first string') do
    expect("keep calm and quack on".word_count("quack")).to(eq(1))
  end
  it('will compare a string of multiple words with a single word string and return a count of 0 for its number of occurrences in first string') do
    expect("keep calm and quack on".word_count("yo")).to(eq(0))
  end
  it('will compare a string of multiple words with a single word string and return a count of 3 for its number of occurrences in first string') do
    expect("keep calm and quack quack quack on".word_count("quack")).to(eq(3))
  end
  it('will compare a string of multiple words with a single word string and return a count of 2 despite capitalization') do
    expect("KEEP CALM and QUACK QUACK ON".word_count("quack")).to(eq(2))
  end
  it('will compare a string of multiple words with a single word string and return a count of 4 despite capitalization') do
    expect("keep calm and quack quack quack quack on".word_count("QUACK")).to(eq(4))
  end
  it('will compare a string of multiple words with a single word string and return a count of 2 taking into account partial matches') do
    expect("Hello Ducks, welcome to introDUCKtion!".word_count("duck")).to(eq(2))
  end
end
