# Time complexity: O(n)
# Space complexity: O(1)

def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  length = my_sentence.length

  reverse(my_sentence, 0, length - 1)
  reverse_words(my_sentence)
  return
end

def reverse_words(my_words)
  return nil if my_words == nil

  start_index = 0
  end_index = 0

  my_words.length.times do |i|
    end_index = i
    if my_words[end_index] == " "
      reverse(my_words, start_index, end_index - 1)
      start_index = end_index + 1
    elsif end_index == my_words.length - 1
      reverse(my_words, start_index, end_index)
    end
  end
  return my_words
end

def reverse(string, start_index, end_index)
  while (start_index < end_index)
    temp = string[start_index]
    string[start_index] = string[end_index]
    string[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return string
end
