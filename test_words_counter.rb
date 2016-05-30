require_relative 'words_counter'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]

class TestWordsCounter < Minitest::Unit::TestCase
  def setup
    @subject = WordsCounter.new
  end

  def test_empty_list
    assert_equal({}, @subject.count_words([]))
  end

  def test_one_word_list
    assert_equal({'cat' => 1}, @subject.count_words(['cat']))
  end

  def test_two_different_words_list
    assert_equal({'cat' => 1, 'dog' => 1}, @subject.count_words(%w{cat dog}))
  end

  def test_two_equal_words_list
    assert_equal({'cat' => 2}, @subject.count_words(%w{cat cat}))
  end

  def test_many_words_list
    assert_equal({'cat' => 2, 'dog' => 1}, @subject.count_words(%w{cat dog cat}))
  end
end