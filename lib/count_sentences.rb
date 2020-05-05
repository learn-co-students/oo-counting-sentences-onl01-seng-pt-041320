require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
   self.end_with?("!")
  end

  def count_sentences
    self.split(/[$.|?|!]+/).count
  end

  def upcase
    puts 'not upcasing for your anymore!'
  end
end
