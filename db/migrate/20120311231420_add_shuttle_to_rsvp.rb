class AddShuttleToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :using_shuttle, :boolean
  end
end
