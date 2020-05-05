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
# monkey patching an existing method
def upcase
puts ' not up casing for you anymore!'
 end
end