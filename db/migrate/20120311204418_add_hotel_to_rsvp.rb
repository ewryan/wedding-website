class AddHotelToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :hotel_id, :integer
  end
end
