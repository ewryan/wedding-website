class Rsvp < ActiveRecord::Base

  def to_s
    if primary
      "#{title} #{first_name} #{last_name}, email='#{phone}', phone='#{email}', attending=#{attending}"
    else
      "#{title} #{first_name} #{last_name}"
    end
  end

  def attending?
    "yes" == attending
  end

end
