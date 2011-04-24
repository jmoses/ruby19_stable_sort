require 'minitest/autorun'
require 'ruby19_stable_sort'

class Ruby19StableSortTest < MiniTest::Unit::TestCase
  def test_that_sort_by_still_works
    assert_equal [[:a, 0], [:b, 1], [:d, 2], [:c, 2], [:e, 3]], [ [:a, 0], [:b, 1], [:c, 2], [:d, 2], [:e, 3] ].sort_by {|x| x[1] }
  end

  def test_that_stable_sort_by_is_stable
    assert_equal [[:a, 0], [:b, 1], [:c, 2], [:d, 2], [:e, 3]], [ [:a, 0], [:b, 1], [:c, 2], [:d, 2], [:e, 3] ].stable_sort_by {|x| x[1] }
  end
end
