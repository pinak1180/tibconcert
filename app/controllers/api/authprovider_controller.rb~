class Api::AuthproviderController < ApplicationController
  def create
    token = params[:fan][:fb_auth_token]
    logger.warn(token)
    user = FbGraph::User.me(token)
      if params[:fan][:email]==user.fetch.email 
        unless Fan.where(:email => params[:fan][:email]).exists?
          Geocoder::Configuration.timeout = 10
          @fan = Fan.new(params[:fan])
          @fan.latitude=request.location.latitude
          @fan.longitude=request.location.longitude
            if @fan.save
              render_json({:status => 200, :message => "Successfully Login with #{params[:fan][:email]}"}.to_json)
            else
              render_json({:errors => @fan.display_errors, :status => 404}.to_json)
            end
        else
          @fan = Fan.find_by_email(params[:fan][:email])
          render_json({:status => 200, :message => " Welcome Successfully Login with #{params[:fan][:email]}"}.to_json)
        end
    else
      render_json({:errors => "Not valid Email for Token", :status => 404}.to_json)
    end
  end
end