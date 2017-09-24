class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :first_name # First Name
      t.string :last_name # Last Name
      t.string :middle_initial # Middle Initial
      t.datetime :date_of_birth # Date of Birth
      t.text :political_interests # Political Interests

      t.timestamps
    end
  end
end
