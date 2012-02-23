class ChangeRsvpSchema < ActiveRecord::Migration
  def up
    drop_table :rsvps
    create_table :rsvps do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.boolean :primary
      t.integer :guest_of_id

      t.timestamps
    end
  end

  def down
  end
end
