class AddLodgingTable < ActiveRecord::Migration
  def up
    create_table :hotels do |t|
      t.string :name
    end

    Hotel.create :name => "Days Inn"
    Hotel.create :name => "Penn Stater"
    Hotel.create :name => "Other"
    Hotel.create :name => "Undecided"
  end

  def down
  end
end
