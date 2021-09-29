@alphabet = { '.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D',
              '.': 'E', '..-.': 'F', '--.': 'G', '....': 'H',
              '..': 'I', '.---': 'J', '-.-': 'K', '.-..': 'L',
              '--': 'M', '-.': 'N', '---': 'O', '.--.': 'P',
              '--.-': 'Q', '.-.': 'R', '...': 'S', '-': 'T',
              '..-': 'U', '...-': 'V', '.--': 'W', '-..-': 'X',
              '-.--': 'Y', '--..': 'Z' }

def decode_word(word)
  result = word
  result = @alphabet[word.to_sym] if word != '/'
  result
end

def decode_char(_letter_morse)
  @alphabet[letterletter_morse_code]
end

def message_decoder(message)
  decoded_words = []
  words_arr = message.split
  words_arr.each do |word|
    decoded_word = decode_word(word)
    decoded_words.push(decoded_word)
  end
  decoded_words.join
end

def decode(message)
  decoded_messages = []
  messages_arr = message.split('   ')
  messages_arr.each do |msg|
    decoded_message = message_decoder(msg)
    decoded_messages.push(decoded_message)
    decoded_messages.push(' ')
  end
  decoded_messages.join
end

morse = '      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...
'
translate = decode(morse)
puts translate
