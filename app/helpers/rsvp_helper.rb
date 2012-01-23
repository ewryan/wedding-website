module RsvpHelper



  def number_to_word int
    @number_to_word ||= {
        1 => "",
        2 => "Second",
        3 => "Third",
        4 => "Fourth",
        5 => "Fifth",
        6 => "Sixth",
        7 => "Seventh",
        8 => "Eigth",
        9 => "Ninth",
    }
    p @number_to_word[int]

    @number_to_word[int]
  end

end
