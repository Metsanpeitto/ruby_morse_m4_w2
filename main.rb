$alphabet = { '.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D',
              '.': 'E', '..-.': 'F', '--.': 'G', '....': 'H',
              '..': 'I', '.---': 'J', '-.-': 'K', '.-..': 'L',
              '--': 'M', '-.': 'N', '---': 'O', '.--.': 'P',
              '--.-': 'Q', '.-.': 'R', '...': 'S', '-': 'T',
              '..-': 'U', '...-': 'V', '.--': 'W', '-..-': 'X',
              '-.--': 'Y', '--..': 'Z' }

$morse = '      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...
'

def word_decoder(word)
  result = word
  result = $alphabet[word.to_sym] if word != '/'
  result
end

def message_decoder(message)
  decoded_words = []
  words_arr = message.split(' ')
  words_arr.each do |word|
    decoded_word = word_decoder(word)
    decoded_words.push(decoded_word)
  end
  decoded_words.join('')
end

def morse_decoder(message)
  decoded_messages = []
  messages_arr = message.split('   ')
  messages_arr.each do |message|
    decoded_message = message_decoder(message)
    decoded_messages.push(decoded_message)
    decoded_messages.push(' ')
  end
  decoded_messages.join('')
end

translate = morse_decoder($morse)
puts translate
