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
    result = []
    result = self.split(/[?!.]/)
    result.reject! { |element| element.to_s.empty? }
    result.length
  end
end