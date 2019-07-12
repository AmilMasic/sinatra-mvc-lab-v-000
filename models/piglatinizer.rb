class PigLatinizer
  # attr_reader :word

  #
  # def piglatinize_sentence(sentence)
  #   sentence_separated = sentence.split.collect
  #   sentence_separated.map {|word| piglatinize(word)}.join(" ")
  #
  #
  # end
  #
  # def piglatinize(word)
  #
  #   alphabet = ("a".."z").to_a
  #   vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  #   consonants = alphabet - vowels
  #
  #   if consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
  #     word[3..-1] + word[0..2] + "ay"
  #   elsif consonants.include?(word[0]) && consonants.include?(word[1])
  #     word[2..-1] + word[0..1] + "ay"
  #   elsif consonants.include?(word[0])
  #     word[1..-1] + word[0] + "ay"
  #    else #vowels.include?(word[0])
  #     word + "way"
  #   end
  #
  # end

  def translate_word(text)

    if /^[aeiou]/i.match(text)

      "#{text}way"

    else

      parts = text.split(/([aeiou].*)/)

      "#{parts[1]}#{parts[0]}ay"

    end

  end



  def piglatinize(text)

    words = text.split(' ')

    words.map {|word| translate_word(word)}.join(' ')

  end
end
