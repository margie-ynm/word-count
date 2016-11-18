class String
  define_method(:word_count) do |target|
    count = 0
    word = self
    if word == target
      count += 1
    end
    count
  end
end
