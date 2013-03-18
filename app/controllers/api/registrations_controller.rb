class Api::RegistrationsController < ApplicationController

def create
    Geocoder::Configuration.timeout = 10
    @fan = Fan.new(params[:fan])

    @fan.latitude=request.location.latitude
    @fan.longitude=request.location.longitude
    unless @fan.save
    logger.warn("----------------------------------------")
    logger.warn(request.location.latitude)
    logger.warn(request.location.longitude)
     render_json({:errors => @fan.display_errors, :status => 404}.to_json)
    else
      @authentication_token = @fan.authentication_tokens.create(:auth_token => AuthenticationToken.generate_unique_token)
      render_json({:status => 200, :message => "Successfully Login with #{@fan.email}"}.to_json)
    end
  end
end
