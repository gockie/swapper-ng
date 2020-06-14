class HomeController < ApplicationController
	layout "swapper"
  def index
  end

  def index_barter
  	@products = Product.where(barter: true)
  end

  def index_cash
  	@products = Product.where(barter: false)
  end

  def howitworks
  	
  end
end
