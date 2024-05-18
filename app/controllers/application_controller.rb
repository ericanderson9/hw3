class ApplicationController < ActionController::Base

  def create
    @application = Application.new
    @application["contact_id"] = params["contact_id"]
    @application["activity_type"] = params["activity_type"]
    @application["note"] = params["note"]
    @application.save
    redirect_to "/application"
  end

end
