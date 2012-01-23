class RsvpController < ApplicationController

  def index

  end

  def create
    #flash[:notice] = 'RSVP successfully submitted!'
    flash[:notice] = params

    respond_to do |format|
      format.html { redirect_to("/rsvp") }
    end
  end

end
