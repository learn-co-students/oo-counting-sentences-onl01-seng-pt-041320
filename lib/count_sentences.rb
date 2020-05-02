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
    self.split(/[.?!]+/).grep(/\S/).count
  end
end


 

# ### The `#count_sentences` Method

# What we'd like to be able to do is call a `count_sentences` method on a string, and get back a, well, count of sentences in that string. In other words:

# ```ruby
# "This is a string! It has three sentences. Right?".count_sentences
# # => 3
# ```

# Your `#count_sentences` method should use the `self` keyword to refer to the string on which it is called. 

# Think about the steps you need to go through to enact the desired behavior:

# * [`split`](http://ruby-doc.org/core-2.2.0/String.html#method-i-split) the string on any and all periods, question marks and exclamation marks. 
# * [`count`](http://ruby-doc.org/core-2.2.0/Array.html#method-i-count) the number of elements that results from that `split`. 
# * Remember to consider edge cases such as the following sentence: `"This, well, is a sentence. This is too!! And so is this, I think? Woo..."`. What would happen if we split this sentence on the punctuation characters? We would end up with an array that contains empty strings as well as strings containing sentences. How would you eliminate empty strings from an array? We recommend placing `require 'pry'` on the top of the file and placing a `binding.pry` inside of the `#count_sentences` method to help you get this test passing. 

# <p data-visibility='hidden'>View <a href='https://learn.co/lessons/oo-counting-sentences' title='Counting Sentences'>Counting Sentences</a> on Learn.co and start learning to code for free.</p>

# <p data-visibility='hidden'>View <a href='https://learn.co/lessons/oo-counting-sentences'>OO Counting Sentences</a> on Learn.co and start learning to code for free.</p>