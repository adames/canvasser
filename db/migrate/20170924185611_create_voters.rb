class CreateVoters < ActiveRecord::Migration[5.1]
  def change
    create_table :voters do |t|
      t.belongs_to :volunteer
      t.string :name # Name
      t.integer :age # Age
      t.text :location # Location
      t.bigint :phone_number # Phone number
      t.datetime :last_contact # Date last contacted
      t.timestamps
    end
  end
end
