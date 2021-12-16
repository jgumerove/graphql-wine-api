module Mutations
  class CreateWineMutation < BaseMutation
    # TODO: define return fields
    field :wine, Types::WineType, null: false
    field :errors, [String], null: true
    argument :title, String, required: true
    argument :price, Integer, required: true
    argument :country_id, ID, required: true
    argument :wine_category, String, required: true
    argument :year, Integer, required: true


    def resolve(title: title, price: price, country_id: country_id, wine_category: wine_category, year: year)
      wine = Wine.new(title: title, price: price, country_id: country_id, wine_category: wine_category, year: year)
      if wine.save
        {
          wine: wine,
          errors: []
        }
      else
        {
          wine: nil,
          errors: wine.errors.full_messages
        }
      end
    end
  end
end
