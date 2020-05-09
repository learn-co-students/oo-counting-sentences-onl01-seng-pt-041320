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
  #  binding.pry
  #  self.split(/[! ","? "]/).count
  self.split(/[.!?]/).reject {|x| x.empty?}.size
  end
end