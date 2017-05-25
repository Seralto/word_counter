require_relative 'words_separator'
require_relative 'words_counter'

text = 'Our Father, Who art in heaven
        Hallowed be Thy Name;
        Thy kingdom come,
        Thy will be done,
        on earth as it is in heaven.
        Give us this day our daily bread,
        and forgive us our trespasses,
        as we forgive those who trespass against us;
        and lead us not into temptation,
        but deliver us from evil. Amen.'

list = WordsSeparator.new.separe_words(text)
count = WordsCounter.new.count_words(list)
sorted_count = count.sort_by { |_, v| v }
top_five = sorted_count.last(5)

puts top_five.to_a.reverse.to_h
