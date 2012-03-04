class AddAttendingToRsvp < ActiveRecord::Migration
  def up
    add_column :rsvps, :attending, :string
  end
end
