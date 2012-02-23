class RsvpController < ApplicationController

  def index

  end

  def create
    if validate_primary params
      primary = Rsvp.create! :title => params["primary_title"],
                             :first_name => params["primary_first_name"],
                             :last_name => params["primary_last_name"],
                             :primary => true,
                             :phone => params["primary_phone"],
                             :email => params["primary_email"]
      guests = create_guests params, primary.id

      RsvpMailer.rsvp_email(primary, guests, params["message"]).deliver

      flash[:notice] = "RSVP successfully submitted for #{params["primary_first_name"]} #{params["primary_last_name"]} and #{guests.size} guests.  <br/> If you need to make any changes please <a href='mailto:aegeorge4@gmail.com'>email us</a> or call us (304-282-9260)."

    else
      flash[:error] = 'There was an error submitting your RSVP.  All fields are required, except the Message.  Please try again.'
      #TODO - Airbrake
    end

    respond_to do |format|
      format.html { redirect_to("/rsvp") }
    end
  end

  def validate_primary params
    validate("primary",params) && !params["primary_email"].empty? && !params["primary_phone"].empty?
  end

  def validate prefix="primary", params
    logger.info "validating #{prefix}"
    !params["#{prefix}_title"].empty? &&
        !params["#{prefix}_first_name"].empty? &&
        !params["#{prefix}_last_name"].empty?
  end

  def create_guests params, primary_id
    guests = []
    1.upto(10) do |guest_num|
      if validate "#{guest_num}_guest", params
        guest = Rsvp.create! :title => params["#{guest_num}_guest_title"],
                             :first_name => params["#{guest_num}_guest_first_name"],
                             :last_name => params["#{guest_num}_guest_last_name"],
                             :primary => false,
                             :guest_of_id => primary_id
        guests << guest
      end
    end
    guests
  end

end
