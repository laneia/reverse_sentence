# Time complexity: O(n)
# Space complexity: O(1)

def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end

  i = 0
  k = 0
  length = my_sentence.length
  k = length - 1
  word_reverse(my_sentence, i, k)
  reverse_words(my_sentence)
  return
end

def reverse_words(my_words)
  if my_words == nil
    return nil
  end

  start_index = 0
  end_index = 0
  my_words.length.times do |i|
    end_index = i
    if my_words[end_index] == " "
      word_reverse(my_words, start_index, end_index - 1)
      start_index = end_index + 1
    elsif end_index == my_words.length - 1
      word_reverse(my_words, start_index, end_index)
    end
  end
  return my_words
end

def word_reverse(string, start_index, end_index)
  while (start_index < end_index)
    temp = string[start_index]
    string[start_index] = string[end_index]
    string[end_index] = temp
    start_index += 1
    end_index -= 1
  end
  return string
end
