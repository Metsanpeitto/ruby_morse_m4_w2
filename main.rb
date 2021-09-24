$alphabet = { '.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D',
              '.': 'E', '..-.': 'F', '--.': 'G', '....': 'H',
              '..': 'I', '.---': 'J', '-.-': 'K', '.-..': 'L',
              '--': 'M', '-.': 'N', '---': 'O', '.--.': 'P',
              '--.-': 'Q', '.-.': 'R', '...': 'S', '-': 'T',
              '..-': 'U', '...-': 'V', '.--': 'W', '-..-': 'X',
              '-.--': 'Y', '--..': 'Z' }

$morse = '      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...
'

def word_decoder(_w)
  result = _w
  result = $alphabet[_w.to_sym] if _w != '/'
  result
end

def message_decoder(m)
  decoded_words = []
  words_arr = m.split(' ')
  words_arr.each do |word|
    decoded_word = word_decoder(word)
    decoded_words.push(decoded_word)
  end
  decoded_words.join('')
end

def morse_decoder(m)
  decoded_messages = []
  messages_arr = m.split('   ')
  messages_arr.each do |message|
    decoded_message = message_decoder(message)
    decoded_messages.push(decoded_message)
    decoded_messages.push(' ')
  end
  decoded_messages.join('')
end

translate = morse_decoder($morse)
puts translate