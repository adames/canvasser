class Volunteer < ApplicationRecord
  has_many :voters

  # determines appropriate portion of voters, then equally cycles through
  # other volunteers' voters and associates them with current volunteer
  def allocate_voters
    portion_of_voters = Voter.all.length / Volunteer.all.length
    portion_of_voters.times do |i|
      volunteer = Volunteer.all[i % Volunteer.all.length]
      next if volunteer.id == self.id
      voter = volunteer.voters.sample
      voter.update(volunteer_id: self.id)
    end
  end
end

# It would be nice for volunteer's voters to be organized by last contact
