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
    if self.end_with?('?')
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?('!')
      true
    else
      false
    end
  end

  def count_sentences
    array = self.split(/[!.?]/)
    array.each_with_index {|word, index|
      if word.length == 0
        array.delete_at(index)
      end
    }
    array.count
  end
end
