def decode_char(char)
  case char
  when ".-"
    "A"
  when "-..."
    "B"
  when "-.-."
    "C"
  when "-.."
    "D"
  when "."
    "E"
  when "..-."
    "F"
  when "--."
    "G"
  when "...."
    "H"
  when ".."
    "I"
  when ".---"
    "J"
  when "-.-"
    "K"
  when ".-.."
    "L"
  when "--"
    "M"
  when "-."
    "N"
  when "---"
    "O"
  when ".--."
    "P"
  when "--.-"
    "Q"
  when ".-."
    "R"
  when "..."
    "S"
  when "-"
    "T"
  when "..-"
    "U"
  when "...-"
    "V"
  when ".--"
    "W"
  when "-..-"
    "X"
  when "-.--"
    "Y"
  when "--.."
    "Z"
  else
    char
  end
end

def decode_word(word)
  splitted_word = word.split(" ")
  new_word = ""
  splitted_word.each {|n| new_word += decode_char n}
  new_word
end

def decode(sentence)
  splitted_sentence = sentence.split("   ")
  sentence = ""
  splitted_sentence.each do |n| 
    sentence += "#{decode_word n} "
  end
  sentence.strip
end

p decode ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ..."