class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :primary
      t.integer :number_of_guests
      t.integer :guest_of_id

      t.timestamps
    end
  end
end
