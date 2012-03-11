module RsvpHelper



  def number_to_word int
    @number_to_word ||= {
        1 => "your",
        2 => "second",
        3 => "third",
        4 => "fourth",
        5 => "fifth",
        6 => "sixth",
        7 => "seventh",
        8 => "eigth",
        9 => "ninth",
        10 => "tenth",
    }
    @number_to_word[int]
  end

end
