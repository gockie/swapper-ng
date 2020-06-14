class State < ApplicationRecord
	has_many :products

	# Friendly ID
	extend FriendlyId
  	friendly_id :title, use: :slugged

  	validates_presence_of :title
end
