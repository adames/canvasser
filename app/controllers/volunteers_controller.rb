class VolunteersController < ApplicationController
  def index
    @volunteers = Volunteer.all
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = Volunteer.new(volunteer_params)
    @volunteer.save
    redirect_to volunteer_path(@volunteer.id)
  end

  def show
    @volunteer = Volunteer.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destoy

  end

  private
   def volunteer_params
    params.require(:volunteer).permit(:first_name, :last_name, :middle_initial,
      :date_of_birth, :political_interests)
   end

end
