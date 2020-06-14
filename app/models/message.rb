class Message < ApplicationRecord
validates_presence_of :name, :email, :phone, :msg
end
