class WordFormatter
  def WordFormatter.postcode(text)
    return text.upcase
  end

  def WordFormatter.camel_case(text)
    words = text.downcase.split(' ').map { | word | word.capitalize }
    return words.join
  end
end