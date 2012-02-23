class Rsvp < ActiveRecord::Base

  def to_s
    "#{title}, #{first_name}, #{last_name}"
  end

end
