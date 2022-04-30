class Message < ApplicationRecord
  validates :full_name, :email, :description, presence: true
end
