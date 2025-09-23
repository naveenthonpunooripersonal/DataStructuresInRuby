def reverse_string(input)
  i = input.length - 1
  reverse_string = ""
  while i >= 0 do
    reverse_string = reverse_string + input[i]
    i -=1
  end
  reverse_string
end


def reverse_string(input)
  return input if input.length.eql?(1)

  i = 0
  j = input.length - 1

  while i < j
    temp = input[i]
    input[i] = input[j]
    input[j] = temp
    i = i + 1
    j = j - 1
  end
  input
end