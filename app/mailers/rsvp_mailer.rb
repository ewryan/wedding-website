class RsvpMailer < ActionMailer::Base

  def rsvp_email(primary, guests, message)
    @primary = primary
    @guests  = guests
    @message = message

    subject_prefix = primary.attending? ? "Attending" : "Not Attending"

    mail(:from => '"amandaanderic.org" <noreply@ericandamanda.org>', :to => 'ewryan@gmail.com', :cc => 'aegeorge4@gmail.com', :subject => "New RSVP - #{subject_prefix} : #{primary.first_name} #{primary.last_name} + #{@guests.size}")
  end

end
