class String
  define_method(:word_count) do |target|
    count = 0
    phrase = self.downcase()
    phrase = phrase.split(' ').each do |word|
      if word == target.downcase()
        count +=1
      elsif word.include?(target)
        count +=1
      end
    end
    count
  end
end
