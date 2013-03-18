class Api::SessionsController < ApplicationController
  def create
    @fan = Fan.authenticate_member_with_auth(params[:fan][:email], params[:fan][:password])
    if @fan.present?
      @authentication_token = @fan.first.authentication_tokens.create(:auth_token => AuthenticationToken.generate_unique_token)
      render_json({:status => 200, :message =>"Successfully Login with #{params[:fan][:email]}"}.to_json)
    else
      render_json({:errors => Fan.invalid_credentials, :status => 404}.to_json)
    end
  end

  def destroy
    @token = AuthenticationToken.where(:auth_token => params[:fan][:auth_token]) 
    if @token.present?
      @token.destroy
      render_json({:status => 200, :message => "Successfully Logout!"}.to_json)
    else
      render_json({:errors => "No user found with authentication_token = #{params[:fan][:auth_token]}"}.to_json)
    end
  end

  private
  
  def render_json(json)
    callback = params[:callback]
    response = begin
      if callback
        "#{callback}(#{json});"
      else
        json
      end
    end
    render({:content_type => :js, :text => response})
  end

  def bad_record
    render_json({:message => "No Record Found!", :status => 404}.to_json)
  end
end