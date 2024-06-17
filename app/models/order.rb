class Order < ApplicationRecord
  belongs_to :user_buyer, class_name: "User"
  belongs_to :user
  belongs_to :painting
end
