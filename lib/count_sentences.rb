require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    count = 0
    splitting_up = self.split(" ")
    splitting_up.collect do |statement| 
      if statement.include?("!") || statement.include?(".") || statement.include?("?")
        count += 1
      end
    end
    count
  end

end