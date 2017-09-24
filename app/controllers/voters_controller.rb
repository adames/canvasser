class VotersController < ApplicationController
  def index
    @voters = Voter.all
  end
end
