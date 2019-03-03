class DashboardController < ApplicationController

  layout "swapper"
  def index
  	@products = current_user.products
  end
end
