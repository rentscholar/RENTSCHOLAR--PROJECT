class DashboardController < ApplicationController
  before_filter :authenticate_landlord!
  def index
    @landlord_email = current_landlord.email
  end
end
