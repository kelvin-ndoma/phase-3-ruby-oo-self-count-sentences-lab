require 'pry'

class String

  def sentence?
   self.end_with?('.') 
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    self.split(/[?.!]/).select{ | word | !word.empty? }.length
  end
end

puts "HI!".end_with?("!")
puts "The weather outside is frightful.".sentence?
puts "This is a string! It has three sentences. Right?".count_sentences