class AddPhoneAndEmail < ActiveRecord::Migration
  def up
    add_column :rsvps, :phone, :string
    add_column :rsvps, :email, :string
  end

  def down
  end
end
