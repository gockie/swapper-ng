class Product < ApplicationRecord
	belongs_to :category
	belongs_to :state
	belongs_to :user
	has_many :product_images, dependent: :destroy
	has_many :boosts
	accepts_nested_attributes_for :product_images, update_only: true, :allow_destroy => true

	validates_presence_of :category_id, :message => ": Please select a category for this product"
	validates_presence_of :name, :message => ": Product Name can't be blank"
	validates_presence_of :description, :message => ": Please describe the product"
	validates_presence_of :state_id, :message => ": Please fill in the location of this product"
	validates_presence_of :condition, :message => ": Condition of the product must be set"


	# Friendly ID
	extend FriendlyId
  	friendly_id :name, use: :slugged

	default_scope { order(created_at: :desc) }

	before_save :set_id

	def set_id
		company = "SWP"
		time_id = Time.now.to_i.to_s.reverse[0..5]
		self.swap_id = company+time_id
	end

	
end
