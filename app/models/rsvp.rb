class Rsvp < ActiveRecord::Base

  def to_s
    if primary
      "#{title} #{first_name} #{last_name}, email='#{phone}', phone='#{email}'"
    else
      "#{title} #{first_name} #{last_name}"
    end
  end

end
