require_relative 'words_separator'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(color: true)]

class TestWordsSeparator < Minitest::Unit::TestCase
  def setup
    @subject = WordsSeparator.new
  end

  def test_implements_separe_words_method
    assert_respond_to(@subject, :separe_words)
  end

  def test_empty_string
    assert_equal(@subject.separe_words(''), [])
  end

  def test_one_word_string
    assert_equal(@subject.separe_words('cat'), ['cat'])
  end

  def test_two_words_string
    assert_equal(%w[cat dog], @subject.separe_words('cat dog'))
  end

  def test_ignore_ponctuation
    assert_equal(%w[the cat's ill], @subject.separe_words("<the!> cat's, -ill-"))
  end
end
