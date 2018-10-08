class Order < ApplicationRecord
  belongs_to :umbrella  # sets up the relationship between our orders and our products
end
