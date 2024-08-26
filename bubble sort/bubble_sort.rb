# frozen_string_literal: true

def bubble_sort(array)
  (array.length - 1).downto(1) do |last_index|
    0.upto(last_index - 1) do |current_index|
      next if array[current_index] < array[current_index + 1]

      temp = array[current_index]
      array[current_index] = array[current_index + 1]
      array[current_index + 1] = temp
    end
  end

  array
end

array = [4, 3, 78, 2, 0, 2]
puts bubble_sort(array)
