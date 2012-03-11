class Rsvp < ActiveRecord::Base

  def to_s
    if primary
      "#{title} #{first_name} #{last_name} \nemail: '#{email}' \nphone: '#{phone}', \nattending: '#{attending}' \nhotel: '#{Hotel.find(hotel_id).name}'"
    else
      "#{title} #{first_name} #{last_name}"
    end
  end

  def attending?
    "yes" == attending
  end

end
