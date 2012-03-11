class Rsvp < ActiveRecord::Base

  def to_s
    if primary
      "#{title} #{first_name} #{last_name} email: '#{email}' phone: '#{phone}' attending: '#{attending}' hotel: '#{Hotel.find(hotel_id).name}' using_shuttle: '#{using_shuttle}'"
    else
      "#{title} #{first_name} #{last_name}"
    end
  end

  def attending?
    "yes" == attending
  end

end
