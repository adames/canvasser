class AddVotersCountToVolunteers < ActiveRecord::Migration[5.1]
  def change
    add_column :volunteers, :voters_count, :integer, default: 0
  end
end
