class CreateVoters < ActiveRecord::Migration[5.1]
  def change
    create_table :voters do |t|
      t.string :name # Name
      t.integer :age # Age
      t.text :location # Location
      t.integer :phone_number # Phone number
      t.datetime :last_contact # Date last contacted
      t.timestamps
    end
  end
end
