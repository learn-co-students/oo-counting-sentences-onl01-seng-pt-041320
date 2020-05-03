require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else 
      return false
    end
  end
  

  def question?
    if self.end_with?("?") 
      return true 
    else 
      return false
    end
  end

  def exclamation? 
    if self.end_with?("!")
      return true 
    else 
      return false 
   end 
  end

  def count_sentences
    new_sentence = self.split(/[.?!]/)
    new_sentence.delete_if{|sentence| sentence.empty?}
    return new_sentence.length
  end
end 