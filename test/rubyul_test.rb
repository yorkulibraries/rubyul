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

  def test_hostname_to_platform_proquest_com
    assert_equal "ProQuest", Rubyul.hostname_to_platform("www.proquest.com")
  end

  def test_hostname_to_platform_csa_com
    assert_equal "ProQuest", Rubyul.hostname_to_platform("anything.csa.com")
  end

  def test_hostname_to_platform_nonsense
    assert_nil Rubyul.hostname_to_platform("this.is.nonsense")
  end

  def test_hostname_to_platform_films_on_demand
    assert_equal "Films on Demand", Rubyul.hostname_to_platform("fod.infobase.com")
  end

end
