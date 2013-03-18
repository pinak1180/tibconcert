class Api::AuthproviderbackstageController < ApplicationController
  Geocoder::Configuration.timeout = 10
  def create
    token = params[:back_stage][:fb_auth_token]
    logger.warn(token)
    user = FbGraph::User.me(token)
      if params[:back_stage][:email]==user.fetch.email
        if params[:back_stage][:type].present?
          if params[:back_stage][:type]=="Artist"
            unless Artist.where(:email => params[:back_stage][:email]).exists?
              params[:back_stage][:type].capitalize 
              @artist = Artist.new(params[:back_stage])
             # @artist.latitude=request.location.latitude
              #@artist.longitude=request.location.longitude
              if @artist.save
                render_json({:status => 200, :message => "Successfully Login with #{params[:back_stage][:email]}"}.to_json)
              else
                render_json({:errors => @fan.display_errors, :status => 404}.to_json)
              end
            else
              @artist = Artist.find_by_email(params[:back_stage][:email])
              render_json({:status => 200, :message => " Welcome Successfully Login with #{params[:back_stage][:email]}"}.to_json)
            end
          elsif params[:back_stage][:type]=="Band"
            unless Band.where(:email => params[:back_stage][:email]).exists?
              params[:back_stage][:type].capitalize 
              @band = Band.new(params[:back_stage])
              #@band.latitude=request.location.latitude
              #@band.longitude=request.location.longitude
              if @band.save
                render_json({:status => 200, :message => "Successfully Login with #{params[:back_stage][:email]}"}.to_json)
              else
                render_json({:errors => @fan.display_errors, :status => 404}.to_json)
              end
            else
              @band = Band.find_by_email(params[:back_stage][:email])
              render_json({:status => 200, :message => " Welcome Successfully Login with #{params[:back_stage][:email]}"}.to_json)
            end
          else
            render_json({:errors => "Inavlid Type", :status => 404}.to_json)  
          end 
        end     
      else
        render_json({:errors => "Not valid Email for Token", :status => 404}.to_json)
    end
  end
end