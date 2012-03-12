require 'base64'

class AdminController < ApplicationController

  before_filter :authenticate

  def index
    @rsvps = Rsvp.all
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "lando" && password == Base64.decode64("bTAwbTAwZmFybQ==\n")
    end
  end

end