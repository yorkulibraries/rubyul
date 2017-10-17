require "test_helper"

class RubyulTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Rubyul::VERSION
  end

  def test_academic_year_a
    assert_equal 2017, Rubyul.academic_year("2017-09-01")
  end

  def test_academic_year_b
    assert_equal 2016, Rubyul.academic_year("2017-08-31")
  end

end
