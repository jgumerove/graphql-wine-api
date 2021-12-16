class Wine < ApplicationRecord
  belongs_to :country
  validates :title, :price, :country_id, :wine_category, :year, presence: :true

end
