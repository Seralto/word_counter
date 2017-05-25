class WordsSeparator
  def separe_words(text)
    text.scan(/[\w']+/)
  end
end
