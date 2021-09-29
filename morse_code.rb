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
    "This is not a valid character in morse code"
  end
end

def decode_word(word)
  splitted_word = word.split(" ")
  sentence = ""
  splitted_word.each {|n| sentence += decode_char n}
  sentence
end

p decode_word("-... --- -..-")
