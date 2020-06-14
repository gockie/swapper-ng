class BoostsController < InheritedResources::Base

  layout "swapper"

  def create
    create!(:notice => "You have boosted this item successfully") {product_path(Product.find(@boost.product_id))}
  end

  private

    def boost_params
      params.require(:boost).permit(:product_id, :boost_type, :paid, :status)
    end
end

