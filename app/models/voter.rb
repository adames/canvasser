class Voter < ApplicationRecord
  belongs_to :volunteer, counter_cache: true

  def self.redistribute_all
    volunteer_count = Volunteer.count
    all_voters = Voter.all
    all_volunteers = Volunteer.all

    volunteer_count.times do |i|
      voters_to_update = all_voters.where("id % ? == ?", volunteer_count, i)
      voters_to_update.update_all(volunteer_id: all_volunteers[i].id)
    end

  end
end
