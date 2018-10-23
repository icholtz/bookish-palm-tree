class Umbrella < ApplicationRecord

  def self.search(search_term)
    Umbrella.where("name LIKE ?", "%#{search_term}%")
  end


end
