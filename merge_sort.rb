# frozen_string_literal: true

def merge_sorted_lists(list1, list2)
  new_array = []
  while list1[0] && list2[0]
    if list1[0] > list2[0]
      new_array.push(list2.shift)
    else
      new_array.push(list1.shift)
    end
  end
  new_array += list1.empty? ? list2 : list1
  new_array
end

def merge_sort(list)
  return list if list.size == 1

  left_half, right_half = list.each_slice((list.size / 2.0).round).to_a
  left_half = merge_sort(left_half)
  right_half = merge_sort(right_half)

  merge_sorted_lists(left_half, right_half)
end

p merge_sort([3, 5, 42, 420, 69, -1, -1, -0.4])
