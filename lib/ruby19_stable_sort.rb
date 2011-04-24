module Enumerable
  def stable_sort_by(&block)
    sort_by.with_index {|item, index| [block[item], index] }
  end
end
