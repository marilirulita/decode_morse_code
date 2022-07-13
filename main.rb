MORSE_CODE = { '.-': 'a', '-...': 'b', '-.-.': 'c', '-..': 'd',
               '.': 'e', '..-.': 'f', '--.': 'g', '....': 'h', '..': 'i',
               '.---': 'j', '-.-': 'k', '.-..': 'l', '--': 'm',
               '-.': 'n', '---': 'o', '.--.': 'p', '--.-': 'q',
               '.-.': 'r', '...': 's', '-': 't', '..-': 'u',
               '...-': 'v', '.--': 'w', '-..-': 'x', '-.--': 'y',
               '--..': 'z', '.----': '1', '..---': '2', '...--': '3',
               '....-': '4', '.....': '5', '-....': '6', '--...': '7',
               '---..': '8', '----.': '9', '-----': '0', '|': ' ' }.freeze

def decode_morse_code_character(incoded_character)
  MORSE_CODE[:"#{incoded_character}"].upcase
end

def decode_morse_code_word(incoded_word)
  word_array = incoded_word.split
  word = ''
  word_array.each { |c| word << decode_morse_code_character(c) }
  word
end

def decode_morse_code_message(incoded_message)
  message_array = incoded_message.split('   ')
  message = ''
  message_array.each { |word| message << " #{decode_morse_code_word(word)}" }
  message
end

p decode_morse_code_character('.-')
p decode_morse_code_word('-- -.--   -. .- -- .')
p decode_morse_code_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
