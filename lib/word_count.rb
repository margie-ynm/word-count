class String
  define_method(:word_count) do |target|
    count = 0
    phrase = self
    phrase = phrase.split(' ').each do |word|
      if word == target
        count += 1
      end
    end
    count
  end
end
