class WordsCounter
  def count_words(list)
    count = Hash.new(0)
    list.each { |word| count[word] += 1 }
    count
  end
end