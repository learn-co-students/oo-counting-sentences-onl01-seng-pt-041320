require 'pry'

class String

  def sentence?
      if self.end_with?(".")
        return true
      end
        return false
  end

  def question?
    if self.end_with?("?")
      return true
    end
      return false
  end

  def exclamation?
    if self.end_with?("!")
      return true
    end
      return false
  end

  def count_sentences
    # call on count_sentences method and get back a string that has the count
    # x = 0
    # count_sentences.string.slice!(x) { |sentence| sentence == x}
   self.split(/[.?!]+/).count
  end

end
