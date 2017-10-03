class Volunteer < ApplicationRecord
  has_many :voters

  # determines & distributes portion of voters to new volunteer
  def allocate_voters
    voter_count = Voter.count
    volunteer_count = Volunteer.count
    num_of_voters_to_allocate = voter_count / volunteer_count
    other_volunteers = Volunteer.all.where("id != ?", id).order("voters_count DESC")

    num_of_voters_to_allocate_per_volunteer = num_of_voters_to_allocate / volunteer_count
    remaining_voters_to_allocate = num_of_voters_to_allocate % volunteer_count

    other_volunteers.each_with_index do |volunteer, i|
      remainder = i < remaining_voters_to_allocate ? 1 : 0
      voters_to_update = volunteer.voters.order("RANDOM()").limit(num_of_voters_to_allocate_per_volunteer + remainder)
      voters_to_update.update_all(volunteer_id: id)
    end
  end
end
