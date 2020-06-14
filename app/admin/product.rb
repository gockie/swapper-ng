ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :category_id, :state_id, :condition, :barter, :price
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    selectable_column
    id_column
    column :name
    column "Seller", :user
    column :category
    column :price
    column :state
    column :barter
    column :hot_deal
    actions defaults: false do |product|
	    item "Preview", admin_product_path(product)
	  end
  end
end
