require 'pry'

class String

  def sentence?
    self.endwith?(".")
  end

  def question?
    self.endwith?("?")
  end

  def exclamation?
    self.endwith?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end